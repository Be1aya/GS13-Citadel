
/datum/round_event_control/sentient_disease
	name = "Spawn Sentient Disease"
	typepath = /datum/round_event/ghost_role/sentient_disease
	weight = 7
	max_occurrences = 0 //GS13 - removed midround pseudo-antags
	min_players = 5
	category = EVENT_CATEGORY_HEALTH
	description = "Spawns a sentient disease, who wants to infect as many people as possible."

/datum/round_event/ghost_role/sentient_disease
	role_name = "sentient disease"

/datum/round_event/ghost_role/sentient_disease/spawn_role()
	var/list/candidates = get_candidates(ROLE_ALIEN, null, ROLE_ALIEN)
	if(!candidates.len)
		return NOT_ENOUGH_PLAYERS

	var/mob/dead/observer/selected = pick_n_take(candidates)

	var/mob/camera/disease/virus = new /mob/camera/disease(SSmapping.get_station_center())
	selected.transfer_ckey(virus, FALSE)
	INVOKE_ASYNC(virus, TYPE_PROC_REF(/mob/camera/disease, pick_name))
	message_admins("[ADMIN_LOOKUPFLW(virus)] has been made into a sentient disease by an event.")
	log_game("[key_name(virus)] was spawned as a sentient disease by an event.")
	spawned_mobs += virus
	return SUCCESSFUL_SPAWN
