/*
	Station Airlocks Regular
*/

/obj/machinery/door/airlock/abandoned
	abandoned = TRUE

/obj/machinery/door/airlock/command
	basecolor = rgb(0,110,200)
	stripcolor = rgb(115,200,255)
	assemblytype = /obj/structure/door_assembly/door_assembly_com
	wiretypepath = /datum/wires/airlock/command
	normal_integrity = 450

/obj/machinery/door/airlock/security
	basecolor = rgb(235,50,50) //gs13 - modular colored airlocks
	stripcolor = rgb(255, 213, 25) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_sec
	wiretypepath = /datum/wires/airlock/security
	normal_integrity = 450

/obj/machinery/door/airlock/engineering
	basecolor = rgb(235,190,0) //gs13 - modular colored airlocks
	stripcolor = rgb(50,50,50) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_eng
	wiretypepath = /datum/wires/airlock/engineering

/obj/machinery/door/airlock/engineering/abandoned
	abandoned = TRUE

/obj/machinery/door/airlock/medical
	basecolor = rgb(250,250,250) //gs13 - modular colored airlocks
	stripcolor = rgb(0,255,255)//gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_med
	wiretypepath = /datum/wires/airlock/medical

/obj/machinery/door/airlock/maintenance
	assemblytype = /obj/structure/door_assembly/door_assembly_mai
	normal_integrity = 250

/obj/machinery/door/airlock/maintenance/abandoned
	abandoned = TRUE

/obj/machinery/door/airlock/maintenance/external
	name = "external airlock access"
	assemblytype = /obj/structure/door_assembly/door_assembly_extmai

/obj/machinery/door/airlock/mining
	name = "mining airlock"
	basecolor = rgb(222, 150, 50) //gs13 - modular colored airlocks
	stripcolor = rgb(162, 95, 28) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_min
	wiretypepath = /datum/wires/airlock/cargo

/obj/machinery/door/airlock/atmos
	name = "atmospherics airlock"
	basecolor = rgb(131,163,93)
	stripcolor = ""
	assemblytype = /obj/structure/door_assembly/door_assembly_atmo
	wiretypepath = /datum/wires/airlock/engineering

/obj/machinery/door/airlock/atmos/abandoned
	abandoned = TRUE

/obj/machinery/door/airlock/research
	basecolor = rgb(250,250,250) //gs13 - modular colored airlocks
	stripcolor = rgb(150,30,255) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_research
	wiretypepath = /datum/wires/airlock/science

/obj/machinery/door/airlock/freezer
	name = "freezer airlock"
	assemblytype = /obj/structure/door_assembly/door_assembly_fre

/obj/machinery/door/airlock/science
	basecolor = rgb(250,250,250) //gs13 - modular colored airlocks
	stripcolor = rgb(150,30,255) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_science
	wiretypepath = /datum/wires/airlock/science

/obj/machinery/door/airlock/virology
	basecolor = rgb(250,250,250) //gs13 - modular colored airlocks
	stripcolor = rgb(0,255,255) //gs13 - modular colored airlocks
	assemblytype = /obj/structure/door_assembly/door_assembly_viro
	wiretypepath = /datum/wires/airlock/medical

//////////////////////////////////
/*
	Station Airlocks Glass
*/

/obj/machinery/door/airlock/glass
	opacity = 0
	glass = TRUE
	basecolor = ""
	stripcolor = ""

/obj/machinery/door/airlock/glass/incinerator
	autoclose = FALSE
	frequency = FREQ_AIRLOCK_CONTROL
	heat_proof = TRUE
	req_access = list(ACCESS_SYNDICATE)

/obj/machinery/door/airlock/glass/incinerator/syndicatelava_interior
	name = "Turbine Interior Airlock"
	id_tag = INCINERATOR_SYNDICATELAVA_AIRLOCK_INTERIOR

/obj/machinery/door/airlock/glass/incinerator/syndicatelava_exterior
	name = "Turbine Exterior Airlock"
	id_tag = INCINERATOR_SYNDICATELAVA_AIRLOCK_EXTERIOR

/obj/machinery/door/airlock/command/glass
	opacity = 0
	glass = TRUE
	normal_integrity = 400

/obj/machinery/door/airlock/engineering/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/engineering/glass/critical
	critical_machine = TRUE //stops greytide virus from opening & bolting doors in critical positions, such as the SM chamber.

/obj/machinery/door/airlock/security/glass
	opacity = 0
	glass = TRUE
	normal_integrity = 400

/obj/machinery/door/airlock/security/glass/abandoned
	abandoned = TRUE

/obj/machinery/door/airlock/medical/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/research/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/research/glass/incinerator
	autoclose = FALSE
	frequency = FREQ_AIRLOCK_CONTROL
	heat_proof = TRUE
	req_access = list(ACCESS_TOX)

/obj/machinery/door/airlock/research/glass/incinerator/toxmix_interior
	name = "Mixing Room Interior Airlock"
	id_tag = INCINERATOR_TOXMIX_AIRLOCK_INTERIOR

/obj/machinery/door/airlock/research/glass/incinerator/toxmix_exterior
	name = "Mixing Room Exterior Airlock"
	id_tag = INCINERATOR_TOXMIX_AIRLOCK_EXTERIOR

/obj/machinery/door/airlock/mining/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/atmos/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/atmos/glass/critical
	critical_machine = TRUE //stops greytide virus from opening & bolting doors in critical positions, such as the SM chamber.

/obj/machinery/door/airlock/science/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/virology/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/maintenance/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/maintenance/external/glass
	opacity = 0
	glass = TRUE
	normal_integrity = 200

//////////////////////////////////
/*
	Station Airlocks Mineral
*/

/obj/machinery/door/airlock/gold
	name = "gold airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/gold.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_gold
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/gold/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/silver
	name = "silver airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/silver.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_silver
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/silver/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/diamond
	name = "diamond airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/diamond.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_diamond
	normal_integrity = 1000
	explosion_block = 2
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/diamond/glass
	normal_integrity = 950
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/uranium
	name = "uranium airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/uranium.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_uranium
	var/last_event = 0
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/uranium/process()
	if(world.time > last_event+20)
		if(prob(50))
			radiate()
		last_event = world.time
	..()

/obj/machinery/door/airlock/uranium/proc/radiate()
	radiation_pulse(get_turf(src), 150)
	return

/obj/machinery/door/airlock/uranium/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/plasma
	name = "plasma airlock"
	desc = "No way this can end badly."
	icon = 'GainStation13/icons/obj/doors/airlocks/station/plasma.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_plasma
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/plasma/temperature_expose(datum/gas_mixture/air, exposed_temperature, exposed_volume)
	if(exposed_temperature > 300)
		PlasmaBurn(exposed_temperature)

/obj/machinery/door/airlock/plasma/proc/ignite(exposed_temperature)
	if(exposed_temperature > 300)
		PlasmaBurn(exposed_temperature)

/obj/machinery/door/airlock/plasma/proc/PlasmaBurn(temperature)
	atmos_spawn_air("plasma=500;TEMP=1000")
	var/obj/structure/door_assembly/DA
	DA = new /obj/structure/door_assembly(loc)
	if(glass)
		DA.glass = TRUE
	if(heat_proof)
		DA.heat_proof_finished = TRUE
	DA.update_icon()
	DA.update_name()
	qdel(src)

/obj/machinery/door/airlock/plasma/BlockThermalConductivity() //we don't stop the heat~
	return FALSE

/obj/machinery/door/airlock/plasma/attackby(obj/item/C, mob/user, params)
	if(C.get_temperature() > 300)//If the temperature of the object is over 300, then ignite
		message_admins("Plasma airlock ignited by [ADMIN_LOOKUPFLW(user)] in [ADMIN_VERBOSEJMP(src)]")
		log_game("Plasma airlock ignited by [key_name(user)] in [AREACOORD(src)]")
		ignite(C.get_temperature())
	else
		return ..()

/obj/machinery/door/airlock/plasma/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/bananium
	name = "bananium airlock"
	desc = "Honkhonkhonk"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/bananium.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_bananium
	doorOpen = 'sound/items/bikehorn.ogg'
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/bananium/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/sandstone
	name = "sandstone airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/sandstone.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_sandstone
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/sandstone/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/wood
	name = "wooden airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/station/wood.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_wood
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/wood/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/titanium
	name = "shuttle airlock"
	assemblytype = /obj/structure/door_assembly/door_assembly_titanium
	icon = 'GainStation13/icons/obj/doors/airlocks/shuttle/shuttle.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/shuttle/overlays.dmi' //GS13 Edit: perspective sprites
	normal_integrity = 400
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/titanium/glass
	normal_integrity = 350
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/bronze
	name = "bronze airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/clockwork/pinion_airlock.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/clockwork/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_bronze
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/bronze/seethru
	assemblytype = /obj/structure/door_assembly/door_assembly_bronze/seethru
	opacity = 0
	glass = TRUE

//////////////////////////////////
/*
	Station2 Airlocks
*/

/obj/machinery/door/airlock/public
	icon = 'GainStation13/icons/obj/doors/airlocks/station2/glass.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/station2/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_public
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/public/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/public/glass/incinerator
	autoclose = FALSE
	frequency = FREQ_AIRLOCK_CONTROL
	heat_proof = TRUE
	req_one_access = list(ACCESS_ATMOSPHERICS, ACCESS_MAINT_TUNNELS)

/obj/machinery/door/airlock/public/glass/incinerator/atmos_interior
	name = "Turbine Interior Airlock"
	id_tag = INCINERATOR_ATMOS_AIRLOCK_INTERIOR

/obj/machinery/door/airlock/public/glass/incinerator/atmos_exterior
	name = "Turbine Exterior Airlock"
	id_tag = INCINERATOR_ATMOS_AIRLOCK_EXTERIOR

//////////////////////////////////
/*
	External Airlocks
*/

/obj/machinery/door/airlock/external
	name = "external airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/external/external.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/external/overlays.dmi' //GS13 Edit: perspective sprites
	note_overlay_file = 'GainStation13/icons/obj/doors/airlocks/external/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_ext
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/external/glass
	opacity = 0
	glass = TRUE

//////////////////////////////////
/*
	CentCom Airlocks
*/

/obj/machinery/door/airlock/centcom //Use grunge as a station side version, as these have special effects related to them via phobias and such.
	icon = 'GainStation13/icons/obj/doors/airlocks/centcom/centcom.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/centcom/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_centcom
	normal_integrity = 1000
	security_level = 6
	explosion_block = 2
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/grunge
	icon = 'GainStation13/icons/obj/doors/airlocks/centcom/centcom.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/centcom/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_grunge
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/grunge/abandoned
	abandoned = TRUE

//////////////////////////////////
/*
	Vault Airlocks
*/

/obj/machinery/door/airlock/vault
	name = "vault door"
	icon = 'GainStation13/icons/obj/doors/airlocks/vault/vault.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/vault/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_vault
	wiretypepath = /datum/wires/airlock/secure
	explosion_block = 2
	normal_integrity = 400 // reverse engieneerd: 400 * 1.5 (sec lvl 6) = 600 = original
	security_level = 6
	stripcolor = 0 //gs13 - modular airlocks

//////////////////////////////////
/*
	Hatch Airlocks
*/

/obj/machinery/door/airlock/hatch
	name = "airtight hatch"
	icon = 'GainStation13/icons/obj/doors/airlocks/hatch/centcom.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/hatch/overlays.dmi' //GS13 Edit: perspective sprites
	note_overlay_file = 'GainStation13/icons/obj/doors/airlocks/hatch/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_hatch
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/maintenance_hatch
	name = "maintenance hatch"
	icon = 'GainStation13/icons/obj/doors/airlocks/hatch/maintenance.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/hatch/overlays.dmi' //GS13 Edit: perspective sprites
	note_overlay_file = 'GainStation13/icons/obj/doors/airlocks/hatch/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_mhatch
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/maintenance_hatch/abandoned
	abandoned = TRUE

//////////////////////////////////
/*
	High Security Airlocks
*/

/obj/machinery/door/airlock/highsecurity
	name = "high tech security airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/highsec/highsec.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/highsec/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_highsecurity
	explosion_block = 2
	normal_integrity = 500
	security_level = 1
	damage_deflection = 30
	stripcolor = 0 //gs13 - modular airlocks

//////////////////////////////////
/*
	Shuttle Airlocks
*/

/obj/machinery/door/airlock/shuttle
	name = "shuttle airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/shuttle/shuttle.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/shuttle/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_shuttle
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/shuttle/glass
	opacity = 0
	glass = TRUE

/obj/machinery/door/airlock/abductor
	name = "alien airlock"
	desc = "With humanity's current technological level, it could take years to hack this advanced airlock... or maybe we should give a screwdriver a try?"
	icon = 'GainStation13/icons/obj/doors/airlocks/abductor/abductor_airlock.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/abductor/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_abductor
	note_overlay_file = 'GainStation13/icons/obj/doors/airlocks/external/overlays.dmi' //GS13 Edit: perspective sprites
	damage_deflection = 30
	explosion_block = 3
	hackProof = TRUE
	aiControlDisabled = 1
	normal_integrity = 700
	security_level = 1
	stripcolor = 0 //gs13 - modular airlocks

//////////////////////////////////
/*
	Cult Airlocks
*/

/obj/machinery/door/airlock/cult
	name = "cult airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/cult/runed/cult.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/cult/runed/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_cult
	hackProof = TRUE
	aiControlDisabled = 1
	req_access = list(ACCESS_BLOODCULT)
	damage_deflection = 10
	var/openingoverlaytype = /obj/effect/temp_visual/cult/door
	var/friendly = FALSE
	var/stealthy = FALSE
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/cult/Initialize(mapload)
	. = ..()
	new openingoverlaytype(loc)

/obj/machinery/door/airlock/cult/canAIControl(mob/user)
	return (iscultist(user) && !isAllPowerCut())

/obj/machinery/door/airlock/cult/obj_break(damage_flag)
	if(!(flags_1 & BROKEN) && !(flags_1 & NODECONSTRUCT_1))
		machine_stat |= BROKEN
		if(!panel_open)
			panel_open = TRUE
		update_icon()

/obj/machinery/door/airlock/cult/isElectrified()
	return FALSE

/obj/machinery/door/airlock/cult/hasPower()
	return TRUE

/obj/machinery/door/airlock/cult/allowed(mob/living/L)
	if(!density)
		return TRUE
	if(friendly || iscultist(L) || isshade(L) || isconstruct(L))
		if(!stealthy)
			new openingoverlaytype(loc)
		return TRUE
	else
		if(!stealthy)
			new /obj/effect/temp_visual/cult/sac(loc)
			var/atom/throwtarget
			throwtarget = get_edge_target_turf(src, get_dir(src, get_step_away(L, src)))
			SEND_SOUND(L, sound(pick('sound/hallucinations/turn_around1.ogg','sound/hallucinations/turn_around2.ogg'),0,1,50))
			flash_color(L, flash_color="#960000", flash_time=20)
			L.DefaultCombatKnockdown(40)
			L.throw_at(throwtarget, 5, 1)
		return FALSE

/obj/machinery/door/airlock/cult/proc/conceal()
	icon = 'GainStation13/icons/obj/doors/airlocks/station/maintenance.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/station/overlays.dmi' //GS13 Edit: perspective sprites
	name = "airlock"
	desc = "It opens and closes."
	stealthy = TRUE
	update_icon()

/obj/machinery/door/airlock/cult/proc/reveal()
	icon = initial(icon)
	overlays_file = initial(overlays_file)
	name = initial(name)
	desc = initial(desc)
	stealthy = initial(stealthy)
	update_icon()

/obj/machinery/door/airlock/cult/narsie_act()
	return

/obj/machinery/door/airlock/cult/emp_act(severity)
	return

/obj/machinery/door/airlock/cult/friendly
	friendly = TRUE

/obj/machinery/door/airlock/cult/glass
	glass = TRUE
	opacity = 0

/obj/machinery/door/airlock/cult/glass/friendly
	friendly = TRUE

/obj/machinery/door/airlock/cult/unruned
	icon = 'GainStation13/icons/obj/doors/airlocks/cult/unruned/cult.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/cult/unruned/overlays.dmi' //GS13 Edit: perspective sprites
	assemblytype = /obj/structure/door_assembly/door_assembly_cult/unruned
	openingoverlaytype = /obj/effect/temp_visual/cult/door/unruned
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/cult/unruned/friendly
	friendly = TRUE

/obj/machinery/door/airlock/cult/unruned/glass
	glass = TRUE
	opacity = 0

/obj/machinery/door/airlock/cult/unruned/glass/friendly
	friendly = TRUE

/obj/machinery/door/airlock/cult/weak
	name = "brittle cult airlock"
	desc = "An airlock hastily corrupted by blood magic, it is unusually brittle in this state."
	normal_integrity = 150
	damage_deflection = 5
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 0, ACID = 0)

//Pinion airlocks: Clockwork doors that only let servants of Ratvar through.
/obj/machinery/door/airlock/clockwork
	name = "pinion airlock"
	desc = "A massive cogwheel set into two heavy slabs of brass."
	icon = 'icons/obj/doors/airlocks/clockwork/pinion_airlock.dmi'
	overlays_file = 'icons/obj/doors/airlocks/clockwork/overlays.dmi'
	hackProof = TRUE
	aiControlDisabled = 1
	req_access = list(ACCESS_CLOCKCULT)
	use_power = FALSE
	resistance_flags = FIRE_PROOF | ACID_PROOF
	damage_deflection = 30
	normal_integrity = 240
	var/construction_state = GEAR_SECURE //Pinion airlocks have custom deconstruction
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/clockwork/Initialize(mapload)
	. = ..()
	new /obj/effect/temp_visual/ratvar/door(loc)
	new /obj/effect/temp_visual/ratvar/beam/door(loc)
	change_construction_value(5)

/obj/machinery/door/airlock/clockwork/Destroy()
	change_construction_value(-5)
	return ..()

/obj/machinery/door/airlock/clockwork/examine(mob/user)
	. = ..()
	switch(construction_state)
		if(GEAR_SECURE)
			. += "<span class='brass'>The cogwheel is solidly <b>wrenched</b> to the brass around it.</span>"
		if(GEAR_LOOSE)
			. += "<span class='alloy'>The cogwheel has been <i>loosened</i>, but remains <b>connected loosely</b> to the door!</span>"

/obj/machinery/door/airlock/clockwork/emp_act(severity)
	if(prob(severity/1.25))
		open()

/obj/machinery/door/airlock/clockwork/canAIControl(mob/user)
	return (is_servant_of_ratvar(user) && !isAllPowerCut())

/obj/machinery/door/airlock/clockwork/ratvar_act()
	return FALSE

/obj/machinery/door/airlock/clockwork/narsie_act()
	..()
	if(src)
		var/previouscolor = color
		color = "#960000"
		animate(src, color = previouscolor, time = 8)
		addtimer(CALLBACK(src, TYPE_PROC_REF(/atom, update_atom_colour)), 8)

/obj/machinery/door/airlock/clockwork/attackby(obj/item/I, mob/living/user, params)
	if(!attempt_construction(I, user))
		return ..()

/obj/machinery/door/airlock/clockwork/allowed(mob/M)
	if(is_servant_of_ratvar(M))
		return TRUE
	return FALSE

/obj/machinery/door/airlock/clockwork/hasPower()
	return TRUE //yes we do have power

/obj/machinery/door/airlock/clockwork/obj_break(damage_flag)
	return

/obj/machinery/door/airlock/clockwork/deconstruct(disassembled = TRUE)
	playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
	if(!(flags_1 & NODECONSTRUCT_1))
		var/turf/T = get_turf(src)
		if(disassembled)
			new/obj/item/stack/tile/brass(T, 4)
		else
			new/obj/item/clockwork/alloy_shards(T)
		new/obj/item/clockwork/alloy_shards/pinion_lock(T)
	qdel(src)

/obj/machinery/door/airlock/clockwork/proc/attempt_construction(obj/item/I, mob/living/user)
	if(!I || !user || !user.canUseTopic(src))
		return FALSE
	else if(I.tool_behaviour == TOOL_WRENCH)
		if(construction_state == GEAR_SECURE)
			user.visible_message("<span class='notice'>[user] begins loosening [src]'s cogwheel...</span>", "<span class='notice'>You begin loosening [src]'s cogwheel...</span>")
			if(!I.use_tool(src, user, 75, volume=50) || construction_state != GEAR_SECURE)
				return TRUE
			user.visible_message("<span class='notice'>[user] loosens [src]'s cogwheel!</span>", "<span class='notice'>[src]'s cogwheel pops off and dangles loosely.</span>")
			playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
			construction_state = GEAR_LOOSE
		else if(construction_state == GEAR_LOOSE)
			user.visible_message("<span class='notice'>[user] begins tightening [src]'s cogwheel...</span>", "<span class='notice'>You begin tightening [src]'s cogwheel into place...</span>")
			if(!I.use_tool(src, user, 75, volume=50) || construction_state != GEAR_LOOSE)
				return TRUE
			user.visible_message("<span class='notice'>[user] tightens [src]'s cogwheel!</span>", "<span class='notice'>You firmly tighten [src]'s cogwheel into place.</span>")
			playsound(src, 'sound/items/deconstruct.ogg', 50, 1)
			construction_state = GEAR_SECURE
		return TRUE
	else if(I.tool_behaviour == TOOL_CROWBAR)
		if(construction_state == GEAR_SECURE)
			to_chat(user, "<span class='warning'>[src]'s cogwheel is too tightly secured! Your [I.name] can't reach under it!</span>")
			return TRUE
		else if(construction_state == GEAR_LOOSE)
			user.visible_message("<span class='notice'>[user] begins slowly lifting off [src]'s cogwheel...</span>", "<span class='notice'>You slowly begin lifting off [src]'s cogwheel...</span>")
			if(!I.use_tool(src, user, 75, volume=50) || construction_state != GEAR_LOOSE)
				return TRUE
			user.visible_message("<span class='notice'>[user] lifts off [src]'s cogwheel, causing it to fall apart!</span>", \
			"<span class='notice'>You lift off [src]'s cogwheel, causing it to fall apart!</span>")
			deconstruct(TRUE)
		return TRUE
	return FALSE

/obj/machinery/door/airlock/clockwork/brass
	glass = TRUE
	opacity = 0

//////////////////////////////////
/*
	Misc Airlocks
*/

/obj/machinery/door/airlock/glass_large
	name = "large glass airlock"
	icon = 'GainStation13/icons/obj/doors/airlocks/glass_large/glass_large.dmi' //GS13 Edit: perspective sprites
	overlays_file = 'GainStation13/icons/obj/doors/airlocks/glass_large/overlays.dmi' //GS13 Edit: perspective sprites
	opacity = 0
	assemblytype = null
	glass = TRUE
	bound_width = 64 // 2x1
	stripcolor = 0 //gs13 - modular airlocks

/obj/machinery/door/airlock/glass_large/narsie_act()
	return
