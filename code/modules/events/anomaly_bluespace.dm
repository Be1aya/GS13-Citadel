/datum/round_event_control/anomaly/anomaly_bluespace
	name = "Anomaly: Bluespace"
	typepath = /datum/round_event/anomaly/anomaly_bluespace
	min_players = 12 //GS13 - higher pop = more likely to be solved instead of wrecking a whole dep
	max_occurrences = 1
	weight = 5
	description = "This anomaly randomly teleports all items and mobs in a large area."

/datum/round_event/anomaly/anomaly_bluespace
	start_when = 3
	announce_when = 10
	anomaly_path = /obj/effect/anomaly/bluespace

/datum/round_event/anomaly/anomaly_bluespace/announce(fake)
	priority_announce("Unstable bluespace anomaly detected on long range scanners. Expected location: [impact_area.name].", "Anomaly Alert", has_important_message = TRUE)
