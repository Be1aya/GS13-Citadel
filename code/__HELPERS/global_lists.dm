//////////////////////////
/////Initial Building/////
//////////////////////////

/proc/make_datum_references_lists()
	//hair
	init_sprite_accessory_subtypes(/datum/sprite_accessory/hair, GLOB.hair_styles_list, GLOB.hair_styles_male_list, GLOB.hair_styles_female_list)
	//facial hair
	init_sprite_accessory_subtypes(/datum/sprite_accessory/facial_hair, GLOB.facial_hair_styles_list, GLOB.facial_hair_styles_male_list, GLOB.facial_hair_styles_female_list)
	//underwear
	init_sprite_accessory_subtypes(/datum/sprite_accessory/underwear/bottom, GLOB.underwear_list, GLOB.underwear_m, GLOB.underwear_f)
	//undershirt
	init_sprite_accessory_subtypes(/datum/sprite_accessory/underwear/top, GLOB.undershirt_list, GLOB.undershirt_m, GLOB.undershirt_f)
	//socks
	init_sprite_accessory_subtypes(/datum/sprite_accessory/underwear/socks, GLOB.socks_list)
	//bodypart accessories (blizzard intensifies)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/lizard, GLOB.tails_list_lizard)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails_animated/lizard, GLOB.animated_tails_list_lizard)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/human, GLOB.tails_list_human)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails_animated/human, GLOB.animated_tails_list_human)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/snouts, GLOB.snouts_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/horns,GLOB.horns_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/ears, GLOB.ears_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/wings, GLOB.wings_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/wings_open, GLOB.wings_open_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/frills, GLOB.frills_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/spines, GLOB.spines_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/spines_animated, GLOB.animated_spines_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/legs, GLOB.legs_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/wings, GLOB.r_wings_list,roundstart = TRUE)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/caps, GLOB.caps_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/insect_wings, GLOB.insect_wings_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/insect_fluff, GLOB.insect_fluffs_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/arachnid_legs, GLOB.arachnid_legs_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/arachnid_spinneret, GLOB.arachnid_spinneret_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/arachnid_mandibles, GLOB.arachnid_mandibles_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/deco_wings, GLOB.deco_wings_list)

//CIT CHANGES START HERE, ADDS SNOWFLAKE BODYPARTS AND MORE
	//mammal bodyparts (fucking furries)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/mam_body_markings, GLOB.mam_body_markings_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails/mam_tails, GLOB.mam_tails_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/ears/mam_ears, GLOB.mam_ears_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/snouts/mam_snouts, GLOB.mam_snouts_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/tails_animated/mam_tails_animated, GLOB.mam_tails_animated_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/taur, GLOB.taur_list)
	//xeno parts (hiss?)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_head, GLOB.xeno_head_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_tail, GLOB.xeno_tail_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/xeno_dorsal, GLOB.xeno_dorsal_list)
	//ipcs
	init_sprite_accessory_subtypes(/datum/sprite_accessory/screen, GLOB.ipc_screens_list, roundstart = TRUE)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/antenna, GLOB.ipc_antennas_list, roundstart = TRUE)
	//genitals
	init_sprite_accessory_subtypes(/datum/sprite_accessory/penis, GLOB.cock_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/vagina, GLOB.vagina_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/breasts, GLOB.breasts_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/butt, GLOB.butt_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/testicles, GLOB.balls_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/belly, GLOB.belly_shapes_list)
	init_sprite_accessory_subtypes(/datum/sprite_accessory/taur_belly, GLOB.taur_belly_shapes_list) //GS13 EDIT TAUR BELLY

	for(var/gpath in subtypesof(/obj/item/organ/genital))
		var/obj/item/organ/genital/G = gpath
		if(!(initial(G.genital_flags) & GENITAL_BLACKLISTED))
			GLOB.genitals_list[initial(G.name)] = gpath
//END OF CIT CHANGES

	//Species
	for(var/spath in subtypesof(/datum/species))
		var/datum/species/S = new spath()
		GLOB.species_list[S.id] = spath
		GLOB.species_datums[S.id] = S

	//Surgeries
	for(var/path in subtypesof(/datum/surgery))
		GLOB.surgeries_list += new path()

	//Emotes
	for(var/path in subtypesof(/datum/emote))
		var/datum/emote/E = new path()
		E.emote_list[E.key] = E

	for(var/path in subtypesof(/datum/bark))
		var/datum/bark/B = new path()
		GLOB.bark_list[B.id] = path
		if(B.allow_random)
			GLOB.bark_random_list[B.id] = path

	// Hair Gradients - Initialise all /datum/sprite_accessory/hair_gradient into an list indexed by gradient-style name
	for(var/path in subtypesof(/datum/sprite_accessory/hair_gradient))
		var/datum/sprite_accessory/hair_gradient/H = new path()
		GLOB.hair_gradients_list[H.name] = H

	// Keybindings
	init_keybindings()

	init_subtypes(/datum/crafting_recipe, GLOB.crafting_recipes)

	INVOKE_ASYNC(GLOBAL_PROC, GLOBAL_PROC_REF(init_ref_coin_values)) //so the current procedure doesn't sleep because of UNTIL()

//creates every subtype of prototype (excluding prototype) and adds it to list L.
//if no list/L is provided, one is created.
/proc/init_subtypes(prototype, list/L)
	if(!istype(L))
		L = list()
	for(var/path in subtypesof(prototype))
		L += new path()
	return L

//returns a list of paths to every subtype of prototype (excluding prototype)
//if no list/L is provided, one is created.
/proc/init_paths(prototype, list/L)
	if(!istype(L))
		L = list()
		for(var/path in subtypesof(prototype))
			L+= path
		return L

/proc/init_ref_coin_values()
	for(var/path in typesof(/obj/item/coin))
		var/obj/item/coin/C = new path
		UNTIL(C.flags_1 & INITIALIZED_1) //we want to make sure the value is calculated and not null.
		GLOB.coin_values[path] = C.get_item_credit_value()
		qdel(C)

