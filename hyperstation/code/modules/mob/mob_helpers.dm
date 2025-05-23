/mob/proc/checkloadappearance()
	var/mob/living/carbon/human/H = src
	if(!istype(H))
		return FALSE
	//GS13 EDIT start
	var/datum/species/A = /datum/species/lizard/ashwalker //GS13 EDIT let ashwalkers have custom avatars
	var/ashie = (H.dna.species.id == SPECIES_ASHWALKER)
	//GS13 EDIT end
	//This will be where the person gets to select their appearance instead of the random character
	if (H.mirrorcanloadappearance == TRUE)
		SEND_SOUND(H, 'sound/misc/server-ready.ogg')
		to_chat(H, "<span class='boldannounce'>This ghost role allows you to select your loaded character's appearance. Make sure you have your ID in your ID slot, if you have one.</span>")
		if(alert(H, "Would you like to load your currently loaded character's appearance?", "This can only be done up until 90s after you spawn.", "Yes", "No") == "Yes")
			if(alert(H, "You should only load a character that has not currently died in the round. Do you accept this?", "Warning", "Yes", "No") == "Yes")
				H.client?.prefs?.copy_to(H)
				if (H.custom_body_size) //Do they have a custom size set?
					H.resize(H.custom_body_size)
				H.real_name = H.client?.prefs?.real_name
				H.mind.name = H.real_name //Makes sure to change their mind name to their real name.
				SSquirks.AssignQuirks(H, H.client, TRUE, FALSE, H.job, FALSE)//This Assigns the selected character's quirks
				H.dna.update_dna_identity() //This makes sure their DNA is updated.
				var/obj/item/card/id/idCard = H.get_idcard() //Time to change their ID card as well if they have one.
				if (idCard != null)
					idCard.update_label(H.real_name, idCard.assignment)
					idCard.registered_name = H.real_name
				H.mirrorcanloadappearance = FALSE //Prevents them from using the mirror again.
				if(ashie) H.set_species(A) //GS13 EDIT
				ADD_TRAIT(H,TRAIT_EXEMPT_HEALTH_EVENTS,GHOSTROLE_TRAIT) //Makes sure they are exempt from health events.
				SEND_SOUND(H, 'sound/magic/charge.ogg') //Fluff
				to_chat(H, "<span class='boldannounce'>Your head aches for a second. You feel like this is how things should have been.</span>")
				log_game("[key_name(H)] has loaded their default appearance for a ghost role.")
				message_admins("[ADMIN_LOOKUPFLW(H)] has loaded their default appearance for a ghost role.")
				return
			else
				to_chat(H, "<span class='boldannounce'>You either took too long or chose not to change. Alrighty. Remember, you have 90 seconds from spawn to get to a mirror and still do it if you wish.</span>")
				return

/mob/living/carbon/human
	var/mirrorcanloadappearance = FALSE //Can the mob load their true appearance with a mirror?
