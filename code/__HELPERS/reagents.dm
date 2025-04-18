/proc/chem_recipes_do_conflict(datum/chemical_reaction/r1, datum/chemical_reaction/r2)
	//do the non-list tests first, because they are cheaper
	if(r1.required_container != r2.required_container)
		return FALSE
	if(r1.is_cold_recipe == r2.is_cold_recipe)
		if(r1.required_temp != r2.required_temp)
			//one reaction requires a more extreme temperature than the other, so there is no conflict
			return FALSE
	else
		var/datum/chemical_reaction/cold_one = r1.is_cold_recipe ? r1 : r2
		var/datum/chemical_reaction/warm_one = r1.is_cold_recipe ? r2 : r1
		if(cold_one.required_temp < warm_one.required_temp)
			//the range of temperatures does not overlap, so there is no conflict
			return FALSE

	//find the reactions with the shorter and longer required_reagents list
	var/datum/chemical_reaction/long_req
	var/datum/chemical_reaction/short_req
	if(r1.required_reagents.len > r2.required_reagents.len)
		long_req = r1
		short_req = r2
	else if(r1.required_reagents.len < r2.required_reagents.len)
		long_req = r2
		short_req = r1
	else
		//if they are the same length, sort instead by the length of the catalyst list
		//this is important if the required_reagents lists are the same
		if(r1.required_catalysts.len > r2.required_catalysts.len)
			long_req = r1
			short_req = r2
		else
			long_req = r2
			short_req = r1


	//check if the shorter reaction list is a subset of the longer one
	var/list/overlap = r1.required_reagents & r2.required_reagents
	if(overlap.len != short_req.required_reagents.len)
		//there is at least one reagent in the short list that is not in the long list, so there is no conflict
		return FALSE

	//check to see if the shorter reaction's catalyst list is also a subset of the longer reaction's catalyst list
	//if the longer reaction's catalyst list is a subset of the shorter ones, that is fine
	//if the reaction lists are the same, the short reaction will have the shorter required_catalysts list, so it will register as a conflict
	var/list/short_minus_long_catalysts = short_req.required_catalysts - long_req.required_catalysts
	if(short_minus_long_catalysts.len)
		//there is at least one unique catalyst for the short reaction, so there is no conflict
		return FALSE

	//if we got this far, the longer reaction will be impossible to create if the shorter one is earlier in GLOB.chemical_reactions_list, and will require the reagents to be added in a particular order otherwise
	return TRUE

/proc/get_chemical_reaction(id)
	if(!GLOB.chemical_reactions_list)
		return
	for(var/reagent in GLOB.chemical_reactions_list)
		for(var/datum/chemical_reaction/R in GLOB.chemical_reactions_list[reagent])
			if(R.id == id)
				return R

/proc/remove_chemical_reaction(datum/chemical_reaction/R)
	if(!GLOB.chemical_reactions_list || !R)
		return
	for(var/rid in R.required_reagents)
		GLOB.chemical_reactions_list[rid] -= R

//see build_chemical_reactions_list in holder.dm for explanations
/proc/add_chemical_reaction(datum/chemical_reaction/R)
	if(!GLOB.chemical_reactions_list || !R.id || !R.required_reagents || !R.required_reagents.len)
		return
	var/primary_reagent = R.required_reagents[1]
	if(!GLOB.chemical_reactions_list[primary_reagent])
		GLOB.chemical_reactions_list[primary_reagent] = list()
	GLOB.chemical_reactions_list[primary_reagent] += R

/proc/choose_reagent_id(mob/user)
	var/chosen_id
	switch(alert(user, "Choose a method.", "Add Reagents", "Search", "Choose from a list", "I'm feeling lucky"))
		if("Search")
			var/valid_id
			while(!valid_id)
				chosen_id = input(user, "Enter the ID of the reagent you want to add.", "Search reagents") as null|text
				if(isnull(chosen_id)) //Get me out of here!
					break
				if(!ispath(text2path(chosen_id)))
					chosen_id = pick_closest_path(chosen_id, make_types_fancy(subtypesof(/datum/reagent)))
					if(ispath(chosen_id))
						valid_id = TRUE
				else
					valid_id = TRUE
				if(!valid_id)
					to_chat(user, "<span class='warning'>A reagent with that ID doesn't exist!</span>")
		if("Choose from a list")
			chosen_id = input(user, "Choose a reagent to add.", "Choose a reagent.") as null|anything in subtypesof(/datum/reagent)
		if("I'm feeling lucky")
			chosen_id = pick(subtypesof(/datum/reagent))
	return chosen_id

/proc/find_reagent_object_from_type(input)
	if(GLOB.chemical_reagents_list[input]) //prefer IDs!
		return GLOB.chemical_reagents_list[input]
	else
		return null

//Checks for if the given reagent R is invalid to process for its passed owner.
/proc/is_reagent_processing_invalid(datum/reagent/R, mob/living/owner)
	if(!R || !owner)
		return TRUE
	//GS13 edit start
	if(HAS_TRAIT(owner, TRAIT_BIOFUEL) && (R.chemical_flags & REAGENT_BIOFUEL_PROCESS))
		return FALSE
	//GS13 edit end
	return ((HAS_TRAIT(owner, TRAIT_ROBOTIC_ORGANISM) && !(R.chemical_flags & REAGENT_ROBOTIC_PROCESS)) || (!HAS_TRAIT(owner, TRAIT_ROBOTIC_ORGANISM) && !(R.chemical_flags & REAGENT_ORGANIC_PROCESS)))
