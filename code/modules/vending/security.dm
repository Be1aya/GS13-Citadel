/obj/machinery/vending/security
	name = "\improper SecTech"
	desc = "A security equipment vendor."
	product_ads = "Crack communist skulls!;Beat some heads in!;Don't forget - harm is good!;Your weapons are right here.;Handcuffs!;Freeze, scumbag!;Don't tase me bro!;Tase them, bro.;Why not have a donut?"
	icon_state = "sec"
	icon_deny = "sec-deny"
	light_mask = "sec-light-mask"
	req_access = list(ACCESS_SECURITY)
	products = list(/obj/item/restraints/handcuffs = 8,
					/obj/item/restraints/handcuffs/cable/zipties = 10,
					/obj/item/grenade/flashbang = 4,
					/obj/item/assembly/flash/handheld = 5,
					/obj/item/reagent_containers/food/snacks/donut = 12,
					/obj/item/storage/box/evidence = 6,
					/obj/item/flashlight/seclite = 4,
					/obj/item/restraints/legcuffs/bola/energy = 7,
					/obj/item/secbat = 5,
					/obj/item/book/manual/sec_SOP = 5,
					/obj/item/book/manual/prisoner_SOP = 2 //GS13
					)
	contraband = list(/obj/item/clothing/glasses/sunglasses = 2,
					/obj/item/storage/fancy/donut_box = 2,
					/obj/item/storage/belt/sabre/secbelt = 1)
	premium = list(/obj/item/coin/antagtoken = 1,
				   /obj/item/clothing/head/helmet/blueshirt = 1,
				   /obj/item/clothing/suit/armor/vest/blueshirt = 1,
					/obj/item/clothing/under/rank/security/officer/blueshirt = 1,
				   /obj/item/clothing/gloves/tackler = 5,
				   /obj/item/grenade/stingbang = 1,
					/obj/item/ssword_kit = 1,
					/obj/item/storage/bag/ammo = 3)
	refill_canister = /obj/item/vending_refill/security
	default_price = PRICE_ALMOST_EXPENSIVE
	extra_price = PRICE_REALLY_EXPENSIVE
	payment_department = ACCOUNT_SEC

/obj/machinery/vending/security/pre_throw(obj/item/I)
	if(istype(I, /obj/item/grenade))
		var/obj/item/grenade/G = I
		G.preprime()
	else if(istype(I, /obj/item/flashlight))
		var/obj/item/flashlight/F = I
		F.on = TRUE
		F.update_brightness()

/obj/item/vending_refill/security
	icon_state = "refill_sec"
