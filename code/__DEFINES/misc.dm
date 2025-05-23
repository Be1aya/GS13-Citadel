// Byond direction defines, because I want to put them somewhere.
// #define NORTH 1
// #define SOUTH 2
// #define EAST 4
// #define WEST 8

#define TEXT_NORTH			"[NORTH]"
#define TEXT_SOUTH			"[SOUTH]"
#define TEXT_EAST			"[EAST]"
#define TEXT_WEST			"[WEST]"

/// yeah yeah i'm a lazy asshole who can't debug yeah yeah
#define DEBUG_LINE message_admins("DEBUG: [__FILE__] [__LINE__] executing!")

/// world.icon_size
#define PIXELS 32

//These get to go at the top, because they're special
//You can use these defines to get the typepath of the currently running proc/verb (yes procs + verbs are objects)
/* eg:
/mob/living/carbon/human/death()
	to_chat(world, THIS_PROC_TYPE_STR) //You can only output the string versions
Will print: "/mob/living/carbon/human/death" (you can optionally embed it in a string with () (eg: the _WITH_ARGS defines) to make it look nicer)
*/
#define THIS_PROC_TYPE .....
#define THIS_PROC_TYPE_STR "[THIS_PROC_TYPE]" //Because you can only obtain a string of THIS_PROC_TYPE using "[]", and it's nice to just +/+= strings
#define THIS_PROC_TYPE_STR_WITH_ARGS "[THIS_PROC_TYPE]([args.Join(",")])"
#define THIS_PROC_TYPE_WEIRD ...... //This one is WEIRD, in some cases (When used in certain defines? (eg: ASSERT)) THIS_PROC_TYPE will fail to work, but THIS_PROC_TYPE_WEIRD will work instead
//define THIS_PROC_TYPE_WEIRD_STR "[THIS_PROC_TYPE_WEIRD]" //Included for completeness
//define THIS_PROC_TYPE_WEIRD_STR_WITH_ARGS "[THIS_PROC_TYPE_WEIRD]([args.Join(",")])" //Ditto

#define NOT_IMPLEMENTED "NOT_IMPLEMENTED"

//Human Overlays Indexes/////////
//LOTS OF CIT CHANGES HERE. BE CAREFUL WHEN UPSTREAM ADDS MORE LAYERS
#define MUTATIONS_LAYER			42		//mutations. Tk headglows, cold resistance glow, etc
#define ANTAG_LAYER 			41		//stuff for things like cultism indicators (clock cult glow, cultist red halos, whatever else new that comes up)
#define GENITALS_BEHIND_LAYER	40		//Some genitalia needs to be behind everything, such as with taurs (Taurs use body_behind_layer
#define BREASTS_BEHIND_LAYER	39		//GS13 Edit - Modular Clothes Layer
#define BODY_BEHIND_LAYER		38		//certain mutantrace features (tail when looking south) that must appear behind the body parts
#define BODYPARTS_LAYER			37		//Initially "AUGMENTS", this was repurposed to be a catch-all bodyparts flag
#define MARKING_LAYER			36		//Matrixed body markings because clashing with snouts?
#define BODY_ADJ_LAYER			35		//certain mutantrace features (snout, body markings) that must appear above the body parts
#define BODY_LAYER				34		//underwear, undershirts, socks, eyes, lips(makeup)
#define BODY_ADJ_UPPER_LAYER	33
#define FRONT_MUTATIONS_LAYER	32		//mutations that should appear above body, body_adj and bodyparts layer (e.g. laser eyes)
#define DAMAGE_LAYER			31		//damage indicators (cuts and burns)
#define UNIFORM_LAYER			30
#define ID_LAYER				29
#define HANDS_PART_LAYER		28
#define SHOES_LAYER				27
#define GLOVES_LAYER			26
#define EARS_LAYER				25
#define GENITALS_UNDER_LAYER 	24
#define MODULAR_BELLY_LAYER		23		//GS13 Edit - Modular Clothes Layer
#define MODULAR_BREASTS_LAYER	22		//GS13 Edit - Modular Clothes Layer
#define MODULAR_BUTT_LAYER		21		//GS13 Edit - Modular Clothes Layer
#define SUIT_LAYER				20
#define GLASSES_LAYER			19
#define BELT_LAYER				18		//Possible make this an overlay of somethign required to wear a belt?
#define SUIT_STORE_LAYER		17
#define NECK_LAYER				16
#define BACK_LAYER				15
#define BELLY_FRONT_LAYER		14		//GS13 Edit - Modular Clothes Layer
#define BREASTS_FRONT_LAYER		13		//GS13 Edit - Modular Clothes Layer
#define BUTT_BEHIND_LAYER		12		//GS13 Edit - Modular Clothes Layer
#define GENITALS_EXPOSED_LAYER	11
#define GENITALS_FRONT_LAYER	10		//Draws some genitalia above clothes and the TAUR body if need be.
#define HAIR_LAYER				9		//TODO: make part of head layer?
#define HORNS_LAYER				8
#define FACEMASK_LAYER			7
#define HEAD_LAYER				6
#define HANDCUFF_LAYER			5
#define LEGCUFF_LAYER			4
#define HANDS_LAYER				3
#define BODY_FRONT_LAYER		2
#define FIRE_LAYER				1		//If you're on fire
#define TOTAL_LAYERS			42		//KEEP THIS UP-TO-DATE OR SHIT WILL BREAK ;_;

//Human Overlay Index Shortcuts for alternate_worn_layer, layers
//Because I *KNOW* somebody will think layer+1 means "above"
//IT DOESN'T OK, IT MEANS "UNDER"
#define UNDER_SUIT_LAYER			(SUIT_LAYER+1)
#define UNDER_HEAD_LAYER			(HEAD_LAYER+1)

//AND -1 MEANS "ABOVE", OK?, OK!?!
#define ABOVE_SHOES_LAYER			(SHOES_LAYER-1)
#define ABOVE_BODY_FRONT_LAYER		(BODY_FRONT_LAYER-1)

//some arbitrary defines to be used by self-pruning global lists. (see master_controller)
#define PROCESS_KILL 26	//Used to trigger removal from a processing list

// Cargo-related stuff.
#define MANIFEST_ERROR_CHANCE		5
#define MANIFEST_ERROR_NAME			1
#define MANIFEST_ERROR_CONTENTS		2
#define MANIFEST_ERROR_ITEM			4

#define TRANSITIONEDGE			7 //Distance from edge to move to another z-level

#define BE_CLOSE TRUE		//in the case of a silicon, to select if they need to be next to the atom
#define NO_DEXTERY TRUE	//if other mobs (monkeys, aliens, etc) can use this
#define NO_TK TRUE
//used by canUseTopic()

//singularity defines
#define STAGE_ONE 1
#define STAGE_TWO 3
#define STAGE_THREE 5
#define STAGE_FOUR 7
#define STAGE_FIVE 9
#define STAGE_SIX 11 //From supermatter shard

//SSticker.current_state values
#define GAME_STATE_STARTUP		0
#define GAME_STATE_PREGAME		1
#define GAME_STATE_SETTING_UP	2
#define GAME_STATE_PLAYING		3
#define GAME_STATE_FINISHED		4

//FONTS:
// Used by Paper and PhotoCopier (and PaperBin once a year).
// Used by PDA's Notekeeper.
// Used by NewsCaster and NewsPaper.
// Used by Modular Computers
#define PEN_FONT "Verdana"
#define FOUNTAIN_PEN_FONT "Segoe Script"
#define CRAYON_FONT "Comic Sans MS"
#define PRINTER_FONT "Times New Roman"
#define SIGNFONT "Times New Roman"
#define CHARCOAL_FONT "Candara"

#define RESIZE_DEFAULT_SIZE 1

//transfer_ai() defines. Main proc in ai_core.dm
#define AI_TRANS_TO_CARD	1 //Downloading AI to InteliCard.
#define AI_TRANS_FROM_CARD	2 //Uploading AI from InteliCard
#define AI_MECH_HACK		3 //Malfunctioning AI hijacking mecha

//check_target_facings() return defines
#define FACING_SAME_DIR											1
#define FACING_EACHOTHER										2
#define FACING_INIT_FACING_TARGET_TARGET_FACING_PERPENDICULAR	3 //Do I win the most informative but also most stupid define award?


//Cache of bloody footprint images
//Key:
//"entered-[blood_state]-[dir_of_image]"
//or: "exited-[blood_state]-[dir_of_image]"
GLOBAL_LIST_EMPTY(bloody_footprints_cache)

//Bloody shoes/footprints
#define MAX_SHOE_BLOODINESS			100
#define BLOODY_FOOTPRINT_BASE_ALPHA	150
#define BLOOD_GAIN_PER_STEP			100
#define BLOOD_LOSS_PER_STEP			5
#define BLOOD_LOSS_IN_SPREAD		20

//Bloody shoe blood states
#define BLOOD_STATE_BLOOD			"blood"
#define BLOOD_STATE_OIL				"oil"
#define BLOOD_STATE_NOT_BLOODY		"no blood whatsoever"
#define BLOOD_AMOUNT_PER_DECAL		20
// GS13 EDIT
#define BLOOD_STATE_JUICE			"juice"

//Blood Decal Colors
#define BLOOD_COLOR_HUMAN			"#dc0000"
#define BLOOD_COLOR_XENO			"#94a83c"
#define BLOOD_COLOR_OIL				"#301d02"
#define BLOOD_COLOR_SYNTHETIC		"#3f48aa"
#define BLOOD_COLOR_SLIME			"#00ff90"
#define BLOOD_COLOR_LIZARD			"#db004D"
#define BLOOD_COLOR_UNIVERSAL		"#db3300"
#define BLOOD_COLOR_BUG				"#ffc933"
#define BLOOD_COLOR_PLANT			"#3d610e"
// GS13 EDIT
#define BLOOD_COLOR_JUICE			"#0004ff"

//suit sensors: sensor_mode defines

#define SENSOR_OFF 0
#define SENSOR_LIVING 1
#define SENSOR_VITALS 2
#define SENSOR_COORDS 3

//suit sensors: has_sensor defines

#define BROKEN_SENSORS -1
#define NO_SENSORS 0
#define DAMAGED_SENSORS_LIVING 1
#define DAMAGED_SENSORS_VITALS 2
#define HAS_SENSORS 3

//suit sensor flags: sensor_flag defines
#define SENSOR_RANDOM (1<<0)
#define SENSOR_LOCKED (1<<1)

//suit sensor integrity percentage threshold defines
#define SENSOR_INTEGRITY_COORDS 0.2
#define SENSOR_INTEGRITY_VITALS 0.6
#define SENSOR_INTEGRITY_BINARY 1

//Wet floor type flags. Stronger ones should be higher in number.
#define TURF_DRY		(0)
#define TURF_WET_WATER	(1<<0)
#define TURF_WET_PERMAFROST	(1<<1)
#define TURF_WET_ICE (1<<2)
#define TURF_WET_LUBE	(1<<3)
#define TURF_WET_SUPERLUBE	(1<<4)

#define IS_WET_OPEN_TURF(O) O.GetComponent(/datum/component/wet_floor)

//Maximum amount of time, (in deciseconds) a tile can be wet for.
#define MAXIMUM_WET_TIME 5 MINUTES

//unmagic-strings for types of polls
#define POLLTYPE_OPTION		"OPTION"
#define POLLTYPE_TEXT		"TEXT"
#define POLLTYPE_RATING		"NUMVAL"
#define POLLTYPE_MULTI		"MULTICHOICE"
#define POLLTYPE_IRV		"IRV"


//Gets the turf this atom inhabits
#define get_turf(A) (get_step(A, 0))

//Same as above except gets the area instead
#define get_area(A) (isarea(A) ? A : get_step(A, 0)?.loc)

//Ghost orbit types:
#define GHOST_ORBIT_CIRCLE		"circle"
#define GHOST_ORBIT_TRIANGLE	"triangle"
#define GHOST_ORBIT_HEXAGON		"hexagon"
#define GHOST_ORBIT_SQUARE		"square"
#define GHOST_ORBIT_PENTAGON	"pentagon"

//Ghost showing preferences:
#define GHOST_ACCS_NONE		1
#define GHOST_ACCS_DIR		50
#define GHOST_ACCS_FULL		100

#define GHOST_ACCS_NONE_NAME		"default sprites"
#define GHOST_ACCS_DIR_NAME			"only directional sprites"
#define GHOST_ACCS_FULL_NAME		"full accessories"

#define GHOST_ACCS_DEFAULT_OPTION	GHOST_ACCS_FULL

GLOBAL_LIST_INIT(ghost_accs_options, list(GHOST_ACCS_NONE, GHOST_ACCS_DIR, GHOST_ACCS_FULL)) //So save files can be sanitized properly.

#define GHOST_OTHERS_SIMPLE 			1
#define GHOST_OTHERS_DEFAULT_SPRITE		50
#define GHOST_OTHERS_THEIR_SETTING 		100

#define GHOST_OTHERS_SIMPLE_NAME 			"white ghost"
#define GHOST_OTHERS_DEFAULT_SPRITE_NAME 	"default sprites"
#define GHOST_OTHERS_THEIR_SETTING_NAME 	"their setting"

#define GHOST_OTHERS_DEFAULT_OPTION			GHOST_OTHERS_THEIR_SETTING

#define GHOST_MAX_VIEW_RANGE_DEFAULT 10
#define GHOST_MAX_VIEW_RANGE_MEMBER 14


GLOBAL_LIST_INIT(ghost_others_options, list(GHOST_OTHERS_SIMPLE, GHOST_OTHERS_DEFAULT_SPRITE, GHOST_OTHERS_THEIR_SETTING)) //Same as ghost_accs_options.

//pda fonts
#define MONO		"Monospaced"
#define VT			"VT323"
#define ORBITRON	"Orbitron"
#define SHARE		"Share Tech Mono"

GLOBAL_LIST_INIT(pda_styles, list(MONO, VT, ORBITRON, SHARE))

//pda icon reskins
#define PDA_SKIN_CLASSIC "Classic"
#define PDA_SKIN_ALT "Holographic"
#define PDA_SKIN_RUGGED "Rugged"
#define PDA_SKIN_MODERN "Modern"
#define PDA_SKIN_MINIMAL "Minimal"

GLOBAL_LIST_INIT(pda_reskins, list(
	PDA_SKIN_CLASSIC = list("icon" = 'icons/obj/pda.dmi'),
	PDA_SKIN_ALT = list("icon" = 'icons/obj/pda_alt.dmi'),
	PDA_SKIN_RUGGED = list("icon" = 'icons/obj/pda_rugged.dmi'),
	PDA_SKIN_MODERN = list("icon" = 'icons/obj/pda_modern.dmi'),
	PDA_SKIN_MINIMAL = list("icon" = 'icons/obj/pda_minimal.dmi')
	))

/////////////////////////////////////
// atom.appearence_flags shortcuts //
/////////////////////////////////////

/*

// Disabling certain features
#define APPEARANCE_IGNORE_TRANSFORM			RESET_TRANSFORM
#define APPEARANCE_IGNORE_COLOUR			RESET_COLOR
#define	APPEARANCE_IGNORE_CLIENT_COLOUR		NO_CLIENT_COLOR
#define APPEARANCE_IGNORE_COLOURING			(RESET_COLOR|NO_CLIENT_COLOR)
#define APPEARANCE_IGNORE_ALPHA				RESET_ALPHA
#define APPEARANCE_NORMAL_GLIDE				~LONG_GLIDE

// Enabling certain features
#define APPEARANCE_CONSIDER_TRANSFORM		~RESET_TRANSFORM
#define APPEARANCE_CONSIDER_COLOUR			~RESET_COLOUR
#define APPEARANCE_CONSIDER_CLIENT_COLOUR	~NO_CLIENT_COLOR
#define APPEARANCE_CONSIDER_COLOURING		(~RESET_COLOR|~NO_CLIENT_COLOR)
#define APPEARANCE_CONSIDER_ALPHA			~RESET_ALPHA
#define APPEARANCE_LONG_GLIDE				LONG_GLIDE

*/

//Just space
#define SPACE_ICON_STATE	"[((x + y) ^ ~(x * y) + z) % 25]"

// Maploader bounds indices
#define MAP_MINX 1
#define MAP_MINY 2
#define MAP_MINZ 3
#define MAP_MAXX 4
#define MAP_MAXY 5
#define MAP_MAXZ 6

// Defib stats
#define DEFIB_TIME_LIMIT 1500
#define DEFIB_TIME_LOSS 60

// Diagonal movement
#define FIRST_DIAG_STEP 1
#define SECOND_DIAG_STEP 2

#define DEADCHAT_ANNOUNCEMENT "announcement"
#define DEADCHAT_ARRIVALRATTLE "arrivalrattle"
#define DEADCHAT_DEATHRATTLE "deathrattle"
#define DEADCHAT_REGULAR "regular-deadchat"

// Bluespace shelter deploy checks
#define SHELTER_DEPLOY_ALLOWED "allowed"
#define SHELTER_DEPLOY_BAD_TURFS "bad turfs"
#define SHELTER_DEPLOY_BAD_AREA "bad area"
#define SHELTER_DEPLOY_ANCHORED_OBJECTS "anchored objects"

//debug printing macros
#define debug_world(msg) if (GLOB.Debug2) to_chat(world, "<span class=\"filter_debuglog\">DEBUG: [msg]</span>")
#define debug_usr(msg) if (GLOB.Debug2&&usr) to_chat(usr, "<span class=\"filter_debuglog\">DEBUG: [msg]</span>")
#define debug_admins(msg) if (GLOB.Debug2) to_chat(GLOB.admins, "<span class=\"filter_debuglog\">DEBUG: [msg]</span>")
#define debug_world_log(msg) if (GLOB.Debug2) log_world("DEBUG: [msg]")

#define INCREMENT_TALLY(L, stat) if(L[stat]){L[stat]++}else{L[stat] = 1}

//TODO Move to a pref
#define STATION_GOAL_BUDGET  1

//Endgame Results
#define NUKE_NEAR_MISS 1
#define NUKE_MISS_STATION 2
#define NUKE_SYNDICATE_BASE 3
#define STATION_DESTROYED_NUKE 4
#define STATION_EVACUATED 5
#define BLOB_WIN 8
#define BLOB_NUKE 9
#define BLOB_DESTROYED 10
#define CULT_ESCAPE 11
#define CULT_FAILURE 12
#define CULT_SUMMON 13
#define NUKE_MISS 14
#define OPERATIVES_KILLED 15
#define OPERATIVE_SKIRMISH 16
#define REVS_WIN 17
#define REVS_LOSE 18
#define WIZARD_KILLED 19
#define STATION_NUKED 20
#define CLOCK_SUMMON 21
#define CLOCK_SILICONS 22
#define CLOCK_PROSELYTIZATION 23
#define SHUTTLE_HIJACK 24
#define GANG_DESTROYED 25
#define GANG_OPERATING 26

#define FIELD_TURF 1
#define FIELD_EDGE 2

//gibtonite state defines
#define GIBTONITE_UNSTRUCK 0
#define GIBTONITE_ACTIVE 1
#define GIBTONITE_STABLE 2
#define GIBTONITE_DETONATE 3

//for obj explosion block calculation
#define EXPLOSION_BLOCK_PROC -1

//for determining which type of heartbeat sound is playing
#define BEAT_FAST 1
#define BEAT_SLOW 2
#define BEAT_NONE 0

//Mouse buttons pressed/held/released
#define RIGHT_CLICK "right"
#define MIDDLE_CLICK "middle"
#define LEFT_CLICK "left"

//Keys held down during the mouse action
#define CTRL_CLICK "ctrl"
#define ALT_CLICK "alt"
#define SHIFT_CLICK "shift"

//Pixel coordinates within the icon, in the icon's coordinate space
#define ICON_X "icon-x"
#define ICON_Y "icon-y"

//Pixel coordinates in screen_loc format ("[tile_x]:[pixel_x],[tile_y]:[pixel_y]")
#define SCREEN_LOC "screen-loc"

//https://secure.byond.com/docs/ref/info.html#/atom/var/mouse_opacity
#define MOUSE_OPACITY_TRANSPARENT 0
#define MOUSE_OPACITY_ICON 1
#define MOUSE_OPACITY_OPAQUE 2

//world/proc/shelleo
#define SHELLEO_ERRORLEVEL 1
#define SHELLEO_STDOUT 2
#define SHELLEO_STDERR 3

//server security mode
#define SECURITY_SAFE 1
#define SECURITY_ULTRASAFE 2
#define SECURITY_TRUSTED 3

//Dummy mob reserve slots
#define DUMMY_HUMAN_SLOT_PREFERENCES "dummy_preference_preview"
#define DUMMY_HUMAN_SLOT_HOLOFORM			"dummy_holoform_generation"
#define DUMMY_HUMAN_SLOT_ADMIN "admintools"
#define DUMMY_HUMAN_SLOT_MANIFEST "dummy_manifest_generation"
#define DUMMY_HUMAN_SLOT_HALLUCINATION "dummy_hallucination"
#define DUMMY_HUMAN_SLOT_EXAMINER "dummy_examiner"

#define PR_ANNOUNCEMENTS_PER_ROUND 5 //The number of unique PR announcements allowed per round
									//This makes sure that a single person can only spam 3 reopens and 3 closes before being ignored

#define MAX_PROC_DEPTH 195 // 200 proc calls deep and shit breaks, this is a bit lower to give some safety room

#define SYRINGE_DRAW 0
#define SYRINGE_INJECT 1

//gold slime core spawning
#define NO_SPAWN 0
#define HOSTILE_SPAWN 1
#define FRIENDLY_SPAWN 2

//slime core activation type
#define SLIME_ACTIVATE_MINOR 1
#define SLIME_ACTIVATE_MAJOR 2

#define LUMINESCENT_DEFAULT_GLOW 2

#define RIDING_OFFSET_ALL "ALL"

//stack recipe placement check types
#define STACK_CHECK_CARDINALS "cardinals" //checks if there is an object of the result type in any of the cardinal directions
#define STACK_CHECK_ADJACENT "adjacent" //checks if there is an object of the result type within one tile

//text files
#define BRAIN_DAMAGE_FILE "traumas_gs.json" //GS13 Edit: Less meta memes
#define ION_FILE "ion_laws_gs.json" //GS13 Edit: we're changing some of the things here, and removing other things
#define PIRATE_NAMES_FILE "pirates.json"
#define REDPILL_FILE "redpill.json"
#define ARCADE_FILE "arcade.json"
// #define BOOMER_FILE "boomer.json"
// #define LOCATIONS_FILE "locations.json"
// #define WANTED_FILE "wanted_message_gs.json" //GS13 Edit: ...This is commented out, but I'll swap it to ours, incase it needs to be renabled.
// #define VISTA_FILE "steve.json"
#define FLESH_SCAR_FILE "wounds/flesh_scar_desc.json"
#define BONE_SCAR_FILE "wounds/bone_scar_desc.json"
#define SCAR_LOC_FILE "wounds/scar_loc.json"


//Fullscreen overlay resolution in tiles.
#define FULLSCREEN_OVERLAY_RESOLUTION_X 15
#define FULLSCREEN_OVERLAY_RESOLUTION_Y 15

#define SUMMON_GUNS "guns"
#define SUMMON_MAGIC "magic"

#define TELEPORT_CHANNEL_BLUESPACE "bluespace"	//Classic bluespace teleportation, requires a sender but no receiver
#define TELEPORT_CHANNEL_QUANTUM "quantum"		//Quantum-based teleportation, requires both sender and receiver, but is free from normal disruption
#define TELEPORT_CHANNEL_WORMHOLE "wormhole"	//Wormhole teleportation, is not disrupted by bluespace fluctuations but tends to be very random or unsafe
#define TELEPORT_CHANNEL_MAGIC "magic"			//Magic teleportation, does whatever it wants (unless there's antimagic)
#define TELEPORT_CHANNEL_CULT "cult"			//Cult teleportation, does whatever it wants (unless there's holiness)
#define TELEPORT_CHANNEL_FREE "free"			//Anything else

//Run the world with this parameter to enable a single run though of the game setup and tear down process with unit tests in between
#define TEST_RUN_PARAMETER "test-run"
//Force the log directory to be something specific in the data/logs folder
#define OVERRIDE_LOG_DIRECTORY_PARAMETER "log-directory"
//Prevent the master controller from starting automatically, overrides TEST_RUN_PARAMETER
#define NO_INIT_PARAMETER "no-init"
//Force the config directory to be something other than "config"
#define OVERRIDE_CONFIG_DIRECTORY_PARAMETER "config-directory"

#define EGG_LAYING_MESSAGES list("lays an egg.","squats down and croons.","begins making a huge racket.","begins clucking raucously.")

// list of all null rod weapons
#define HOLY_WEAPONS /obj/item/nullrod, /obj/item/dualsaber/hypereutactic/chaplain, /obj/item/gun/energy/laser/redtag/hitscan/chaplain, /obj/item/multitool/chaplain, /obj/item/clothing/gloves/fingerless/pugilist/chaplain, /obj/item/melee/baseball_bat/chaplain

// Used by PDA and cartridge code to reduce repetitiveness of spritesheets
#define PDAIMG(what) {"<span class="pda16x16 [#what]"></span>"}

//Filters
#define AMBIENT_OCCLUSION(_size, _color) list("type"="drop_shadow","x"=0,"y"=-2,"size"=_size,"color"=_color)
#define EYE_BLUR(size) list("type"="blur", "size"=size)
#define GRAVITY_MOTION_BLUR list("type"="motion_blur","x"=0,"y"=0)

#define STANDARD_GRAVITY 1 //Anything above this is high gravity, anything below no grav
#define GRAVITY_DAMAGE_TRESHOLD 3 //Starting with this value gravity will start to damage mobs

#define CAMERA_NO_GHOSTS 0
#define CAMERA_SEE_GHOSTS_BASIC 1
#define CAMERA_SEE_GHOSTS_ORBIT 2

#define CLIENT_FROM_VAR(I) (ismob(I) ? I:client : (istype(I, /client) ? I : (istype(I, /datum/mind) ? I:current?:client : null)))

#define AREASELECT_CORNERA "corner A"
#define AREASELECT_CORNERB "corner B"

#define VARSET_FROM_LIST(L, V) if(L && L[#V]) V = L[#V]
#define VARSET_FROM_LIST_IF(L, V, C...) if(L && L[#V] && (C)) V = L[#V]
#define VARSET_TO_LIST(L, V) if(L) L[#V] = V
#define VARSET_TO_LIST_IF(L, V, C...) if(L && (C)) L[#V] = V

#define PREF_LOAD_COOLDOWN 5
#define PREF_SAVE_COOLDOWN 2 SECONDS

#define VOMIT_TOXIC 1
#define VOMIT_PURPLE 2
#define VOMIT_NANITE 3

// possible bitflag return values of intercept_zImpact(atom/movable/AM, levels = 1) calls
#define FALL_INTERCEPTED		(1<<0) //Stops the movable from falling further and crashing on the ground
#define FALL_NO_MESSAGE			(1<<1) //Used to suppress the "[A] falls through [old_turf]" messages where it'd make little sense at all, like going downstairs.
#define FALL_STOP_INTERCEPTING	(1<<2) //Used in situations where halting the whole "intercept" loop would be better, like supermatter dusting (and thus deleting) the atom.

#define CRYOMOBS 'icons/obj/cryo_mobs.dmi'

#define CUSTOM_HOLOFORM_DELAY		10 SECONDS			//prevents spamming to make lag. it's pretty expensive to do this.

#define HOLOFORM_FILTER_AI		"FILTER_AI"
#define HOLOFORM_FILTER_PAI		"FILTER_PAI"
#define HOLOFORM_FILTER_STATIC	"FILTER_STATIC"

#define CANT_REENTER_ROUND -1

//Nightshift levels.
#define NIGHTSHIFT_AREA_FORCED				0		//ALWAYS nightshift if nightshift is enabled
#define NIGHTSHIFT_AREA_PUBLIC				1		//hallways
#define NIGHTSHIFT_AREA_RECREATION			2		//dorms common areas, etc
#define NIGHTSHIFT_AREA_DEPARTMENT_HALLS	3		//interior hallways, etc
#define NIGHTSHIFT_AREA_NONE				4		//default/highest.


//Scavenging element defines for special loot "events".
#define SCAVENGING_FOUND_NOTHING	"found_nothing"
#define SCAVENGING_SPAWN_MOUSE		"spawn_mouse"
#define SCAVENGING_SPAWN_MICE		"spawn_mice"
#define SCAVENGING_SPAWN_TOM		"spawn_tom_the_mouse"

//Scavenging element defines for ckey/mind restrictions.
#define NO_LOOT_RESTRICTION			0
#define LOOT_RESTRICTION_MIND		1
#define LOOT_RESTRICTION_CKEY		2
#define LOOT_RESTRICTION_MIND_PILE	3 //limited to the current pile.
#define LOOT_RESTRICTION_CKEY_PILE	4 //Idem

//stages of shoe tying-ness
#define SHOES_UNTIED 0
#define SHOES_TIED 1
#define SHOES_KNOTTED 2

#define WANTED_FILE "wanted_message_gs.json" //GS Edit: Nanotrasen to Gato.

// Notification action types
#define NOTIFY_JUMP "jump"
#define NOTIFY_ATTACK "attack"
#define NOTIFY_ORBIT "orbit"

//GS13 WEIGHT GAIN TYPES
#define MINIMUM_FATNESS_LEVEL 0

#define FATTENING_TYPE_ITEM "item"
#define FATTENING_TYPE_FOOD "food"
#define FATTENING_TYPE_CHEM "chem"
#define FATTENING_TYPE_WEAPON "weapon"
#define FATTENING_TYPE_MAGIC "magic"
#define FATTENING_TYPE_VIRUS "virus"
#define FATTENING_TYPE_NANITES "nanites"
#define FATTENING_TYPE_ATMOS "atmos"	// yeah I'm taking the name atmos instead of gasses, because fuck you I'm not calling my pref "inflation type gas", some people will get confused, if you wanna do inflation just call it that lol
#define FATTENING_TYPE_RADIATIONS "radiations"
#define FATTENING_TYPE_WEIGHT_LOSS "weight_loss"
#define FATTENING_TYPE_ALMIGHTY "almighty" //This ignores prefs, please only use this for smites and other admin controlled instances.
#define TRANSFORMATION "transformation"

#define FATNESS_TO_WEIGHT_RATIO 0.25
