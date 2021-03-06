/obj/item/clothing/gloves/cyborg
	desc = "beep boop borp"
	name = "cyborg gloves"
	icon_state = "black"
	item_state = "black"
	siemens_coefficient = 1.0

/obj/item/clothing/gloves/swat
	desc = "These tactical gloves are somewhat fire and impact-resistant."
	name = "\improper SWAT gloves"
	icon_state = "black"
	item_state = "black"
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/gloves/swat/ert
	species_restricted = null

/obj/item/clothing/gloves/swat/tactical
	name = "\improper tactical gloves"
	icon_state = "black_leather"
	item_state = "black_leather"
	species_restricted = null

/obj/item/clothing/gloves/combat //Combined effect of SWAT gloves and insulated gloves
	desc = "These tactical gloves are somewhat fire and impact resistant."
	name = "combat gloves"
	icon_state = "black"
	item_state = "black"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/ring/ninja
	desc = "A pair of plain black infiltration gloves. Too thin to protect anything, but can fit underneath a hardsuit gauntlet."
	name = "black slipgloves"
	icon = 'icons/obj/clothing/gloves.dmi'
	icon_state = "black"
	item_state = "black"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	undergloves = 1
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/gloves/latex
	name = "latex gloves"
	desc = "Sterile latex gloves."
	desc_info = "You can make balloons with these using some cable coil."
	icon_state = "latex"
	item_state = "latex"
	siemens_coefficient = 1.0 //thin latex gloves, much more conductive than fabric gloves (basically a capacitor for AC)
	permeability_coefficient = 0.01
	germ_level = 0
	fingerprint_chance = 75
	drop_sound = 'sound/items/drop/rubber.ogg'
	pickup_sound = 'sound/items/pickup/rubber.ogg'
	var/balloon = /obj/item/toy/balloon/latex

/obj/item/clothing/gloves/latex/attackby(var/obj/O, mob/user as mob)
	if(istype(O, /obj/item/stack/cable_coil))
		var/obj/item/stack/cable_coil/C = O
		if(C.use(1))
			var/obj/item/L = new src.balloon
			user.drop_from_inventory(L,get_turf(src))
			to_chat(user, "<span class='notice'>You make a balloon.</span>")
			qdel(src)
		else
			to_chat(user, "<span class='warning'>You need one length of cable to finish the balloon!</span>")

/obj/item/clothing/gloves/latex/nitrile
	name = "nitrile gloves"
	desc = "Sterile nitrile gloves."
	icon_state = "nitrile"
	item_state = "nitrile"
	balloon = /obj/item/toy/balloon/latex/nitrile

/obj/item/clothing/gloves/latex/nitrile/unathi
	name = "unathi nitrile gloves"
	desc = "Sterile nitrile gloves. Designed for Unathi use."
	icon_state = "nitrile"
	item_state = "nitrile"
	species_restricted = list(BODYTYPE_UNATHI)

/obj/item/clothing/gloves/latex/nitrile/tajara
	name = "tajaran nitrile gloves"
	desc = "Sterile nitrile gloves. Designed for Tajara use."
	icon_state = "nitrile"
	item_state = "nitrile"
	species_restricted = list(BODYTYPE_TAJARA)

/obj/item/clothing/gloves/latex/unathi
	name = "unathi latex gloves"
	desc = "Sterile latex gloves. Designed for Unathi use."
	species_restricted = list(BODYTYPE_UNATHI)

/obj/item/clothing/gloves/latex/tajara
	name = "tajaran latex gloves"
	desc = "Sterile latex gloves. Designed for Tajara use."
	species_restricted = list(BODYTYPE_TAJARA)

/obj/item/clothing/gloves/botanic_leather
	desc = "These leather work gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin."
	name = "leather gloves"
	icon_state = "leather"
	item_state = "leather"
	permeability_coefficient = 0.05
	siemens_coefficient = 0.50 //thick work gloves
	drop_sound = 'sound/items/drop/leather.ogg'
	pickup_sound = 'sound/items/pickup/leather.ogg'

/obj/item/clothing/gloves/botanic_leather/unathi
	name = "unathi leather gloves"
	species_restricted = list(BODYTYPE_UNATHI)

/obj/item/clothing/gloves/botanic_leather/tajara
	name = "tajaran leather gloves"
	species_restricted = list(BODYTYPE_TAJARA)

/obj/item/clothing/gloves/watch
	name = "watch"
	desc = "It's a GaussIo ZeitMeister, a finely tuned wristwatch encased in black plastic."
	desc_fluff = "For those who want too much time on their wrists instead."
	icon_state = "watch"
	item_state = "watch"
	w_class = ITEMSIZE_TINY
	wired = 1
	species_restricted = null
	gender = NEUTER
	body_parts_covered = null
	fingerprint_chance = 100
	var/flipped = 0
	drop_sound = 'sound/items/drop/accessory.ogg'
	pickup_sound = 'sound/items/pickup/accessory.ogg'

/obj/item/clothing/gloves/watch/silver
	desc = "It's a GaussIo ZeitMeister, a finely tuned wristwatch encased in silver."
	desc_fluff = "To unleash the telemarketer in you!"
	icon_state = "watch_silver"
	item_state = "watch_silver"

/obj/item/clothing/gloves/watch/gold
	desc = "It's a GaussIo ZeitMeister, a finely tuned wristwatch encased in <b>REAL</b> faux gold."
	desc_fluff = "Be the jerk-ass pawn shop owner you'll never be."
	icon_state = "watch_gold"
	item_state = "watch_gold"

/obj/item/clothing/gloves/watch/spy
	desc = "It's a GENUINE Spy-Tech Invisi-watch! <b>WARNING</b> : Does not actually make you invisible."
	desc_fluff = "Makes you want to wear a balaclava and smoke a cigarette."
	icon_state = "watch_spy"
	item_state = "watch_silver"

/obj/item/clothing/gloves/watch/spy/checktime()
	to_chat(usr, "You check your watch. Unfortunately for you, it's not a real watch, dork.")

/obj/item/clothing/gloves/watch/examine(mob/user)
	..()
	if (get_dist(src, user) <= 1)
		checktime()

/obj/item/clothing/gloves/watch/verb/checktime()
	set category = "Object"
	set name = "Check Time"
	set src in usr

	if(wired && !clipped)
		to_chat(usr, "You check your watch, spotting a digital collection of numbers reading '[worldtime2text()]'. Today's date is '[time2text(world.time, "Month DD")]. [game_year]'.")
		if (emergency_shuttle.get_status_panel_eta())
			to_chat(usr, SPAN_WARNING("The shuttle's status is reported as: [emergency_shuttle.get_status_panel_eta()]."))
	else if(wired && clipped)
		to_chat(usr, "You check your watch, realising it's still open.")
	else
		to_chat(usr, "You check your watch as it dawns on you that it's broken.")

/obj/item/clothing/gloves/watch/verb/pointatwatch()
	set category = "Object"
	set name = "Point At Watch"
	set src in usr

	if(wired && !clipped)
		usr.visible_message (SPAN_NOTICE("[usr] taps their foot on the floor, arrogantly pointing at the [src] on their wrist with a look of derision in their eyes."), SPAN_NOTICE("You point down at the [src], an arrogant look about your eyes."))
	else if(wired && clipped)
		usr.visible_message (SPAN_NOTICE("[usr] taps their foot on the floor, arrogantly pointing at the [src] on their wrist with a look of derision in their eyes, not noticing it's open."), SPAN_NOTICE("You point down at the [src], an arrogant look about your eyes."))
	else
		usr.visible_message (SPAN_NOTICE("[usr] taps their foot on the floor, arrogantly pointing at the [src] on their wrist with a look of derision in their eyes, not noticing it's broken."), SPAN_NOTICE("You point down at the [src], an arrogant look about your eyes."))

/obj/item/clothing/gloves/watch/verb/swapwrists()
	set category = "Object"
	set name = "Flip Watch Wrist"
	set src in usr

	if (usr.stat || usr.restrained())
		return

	src.flipped = !src.flipped
	if(src.flipped)
		src.item_state = "[item_state]_alt"
	else
		src.item_state = initial(item_state)
	to_chat(usr, "You change \the [src] to be on your [src.flipped ? "left" : "right"] hand.")
	update_clothing_icon()

/obj/item/clothing/gloves/watch/attackby(obj/item/W, mob/user)
	if(W.isscrewdriver())
		if (clipped) //Using clipped because adding a new var for something is dumb
			user.visible_message(SPAN_NOTICE("[user] screws the cover of the [src] closed."), SPAN_NOTICE("You screw the cover of the [src] closed."))
			clipped = 0
			return
//		playsound(src.loc, 'sound/items/wirecutter.ogg', 100, 1)
		user.visible_message(SPAN_NOTICE("[user] unscrews the cover of the [src]."), SPAN_NOTICE("You unscrew the cover of the [src]."))
		clipped = 1
		return
	if(wired)
		return
	if(W.iscoil())
		var/obj/item/stack/cable_coil/C = W
		if (!clipped)
			to_chat(user, SPAN_NOTICE("The [src] is not open."))
			return

		if(wired)
			to_chat(user, SPAN_NOTICE("The [src] are already wired."))
			return

		if(C.amount < 2)
			to_chat(user, SPAN_NOTICE("There is not enough wire to cover the [src]."))
			return

		C.use(2)
		wired = 1
		to_chat(user, SPAN_NOTICE("You repair some wires in the [src]."))
		return

/obj/item/clothing/gloves/watch/emp_act(severity)
	if(prob(50/severity))
		wired = 0
	..()

/obj/item/clothing/gloves/armchain
	name = "cobalt arm chains"
	desc = "A set of luxurious chains intended to be wrapped around long, lanky arms. They don't seem particularly comfortable. They're encrusted with cobalt-blue gems, and made of <b>REAL</b> faux gold."
	icon_state = "cobalt_armchains"
	item_state = "cobalt_armchains"
	siemens_coefficient = 1.0
	fingerprint_chance = 100
	drop_sound = 'sound/items/drop/accessory.ogg'
	pickup_sound = 'sound/items/pickup/accessory.ogg'

/obj/item/clothing/gloves/armchain/emerald
	name = "emerald arm chains"
	desc = "A set of luxurious chains intended to be wrapped around long, lanky arms. They don't seem particularly comfortable. They're encrusted with emerald-green gems, and made of <b>REAL</b> faux gold."
	icon_state = "emerald_armchains"
	item_state = "emerald_armchains"

/obj/item/clothing/gloves/armchain/ruby
	name = "ruby arm chains"
	desc = "A set of luxurious chains intended to be wrapped around long, lanky arms. They don't seem particularly comfortable. They're encrusted with ruby-red gems, and made of <b>REAL</b> faux gold."
	icon_state = "ruby_armchains"
	item_state = "ruby_armchains"

/obj/item/clothing/gloves/goldbracer
	name = "cobalt bracers"
	desc = "A pair of sturdy and thick decorative bracers, seeming better for fashion than protection. They're encrusted with cobalt-blue gems, and made of <b>REAL</b> faux gold."
	icon_state = "cobalt_bracers"
	item_state = "cobalt_bracers"
	siemens_coefficient = 1.0
	fingerprint_chance = 100
	drop_sound = 'sound/items/drop/accessory.ogg'
	pickup_sound = 'sound/items/pickup/accessory.ogg'

/obj/item/clothing/gloves/goldbracer/emerald
	name = "emerald bracers"
	desc = "A pair of sturdy and thick decorative bracers, seeming better for fashion than protection. They're encrusted with emerald-green gems, and made of <b>REAL</b> faux gold."
	icon_state = "emerald_bracers"
	item_state = "emerald_bracers"

/obj/item/clothing/gloves/goldbracer/ruby
	name = "ruby bracers"
	desc = "A pair of sturdy and thick decorative bracers, seeming better for fashion than protection. They're encrusted with ruby-red gems, and made of <b>REAL</b> faux gold."
	icon_state = "ruby_bracers"
	item_state = "ruby_bracers"

	/*
	Forcegloves.  They amplify force from melee hits as well as muck up disarm and stuff a little.
	Has bits of code in item_attack.dm, stungloves.dm, human_attackhand, human_defense
	*/


/obj/item/clothing/gloves/force // this pair should be put in r&d if you choose to do so.  and also the hos office locker.  do it okay
	name = "force gloves"
	desc = "These gloves bend gravity and bluespace, dampening inertia and augmenting the wearer's melee capabilities."
	icon_state = "force_glove" //todo: different sprites for different levels of power
	item_state = "force_glove"
	siemens_coefficient = 0.6
	permeability_coefficient = 0.05
	drop_sound = 'sound/items/drop/toolbox.ogg'
	pickup_sound = 'sound/items/pickup/toolbox.ogg'

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

	var/active = 1 //i am actually too lazy to code an on/off switch so if you want it off, take them off for now.  yes.
	var/amplification = 2

/obj/item/clothing/gloves/force/basic //dooo iiiitttttt
	name = "basic force gloves" //do it skull do it give it to all sec the forums agree go
	desc = "These gloves bend gravity and bluespace, providing a cheap boost to the effectiveness of your average security staff."
	icon_state = "power_glove" //todo: different sprites for different levels of power
	item_state = "power_glove"
	amplification = 1 //just do it

/obj/item/clothing/gloves/force/syndicate  //for syndies.  pda, *maybe* nuke team or ert.  up to you.  maybe just use the amp 2 variant.
	name = "enhanced force gloves"
	amplification = 2.5 //because *2.5 is kind of scary okay.  sometimes you want the scary effect.  sometimes not.

/obj/item/clothing/gloves/brassknuckles
	name = "brass knuckles"
	desc = "A pair of brass knuckles. Generally used to enhance the user's punches."
	icon_state = "knuckledusters"
	item_state = "knuckledusters"
	attack_verb = list("punched", "beaten", "struck")
	siemens_coefficient = 1
	fingerprint_chance = 100
	force = 5
	punch_force = 5
	clipped = 1
	matter = list(DEFAULT_WALL_MATERIAL = 1000)

	drop_sound = 'sound/items/drop/sword.ogg'
	pickup_sound = /decl/sound_category/sword_pickup_sound

/obj/item/clothing/gloves/powerfist
	name = "power fist"
	desc = "A metal gauntlet with a piston-powered ram ontop for that extra punch in your punch."
	icon_state = "powerfist"
	item_state = "powerfist"
	attack_verb = list("whacked", "fisted", "power-punched")
	siemens_coefficient = 1
	fingerprint_chance = 50
	force = 5
	punch_force = 10
	clipped = 1
	species_restricted = list("exclude",BODYTYPE_GOLEM,BODYTYPE_VAURCA_BREEDER,BODYTYPE_VAURCA_WARFORM)
	drop_sound = 'sound/items/drop/toolbox.ogg'
	pickup_sound = 'sound/items/pickup/toolbox.ogg'
	gender = NEUTER

/obj/item/clothing/gloves/powerfist/Touch(atom/A, mob/living/user, proximity)
	if(!proximity)
		return

	if(!isliving(A))
		return

	var/mob/living/L = A

	if(prob(50) && (user.a_intent == I_HURT))
		playsound(user, 'sound/weapons/beartrap_shut.ogg', 50, 1, -1)
		user.visible_message("<span class='danger'>\The [user] slams \the [L] away with \the [src]!</span>")
		var/T = get_turf(user)
		spark(T, 3, alldirs)
		L.throw_at(get_edge_target_turf(loc, loc.dir), 5, 1)
		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			H.apply_effect(2, WEAKEN)

/obj/item/clothing/gloves/claws
	name = "clawed gauntlets"
	desc = "A pair of metal gauntlets outfited with menacing sharp blades."
	icon_state = "warping_claws"
	item_state = "warping_claws"
	attack_verb = list("ripped", "torn", "cut")
	armor = list(melee = 50, bullet = 15, laser = 15, energy = 10, bomb = 10, bio = 0, rad = 0)
	siemens_coefficient = 1
	force = 5
	punch_force = 10
	clipped = 1
	sharp = 1
	edge = 1
	drop_sound = 'sound/items/drop/toolbox.ogg'
	pickup_sound = 'sound/items/pickup/toolbox.ogg'

/obj/item/clothing/gloves/offworlder
	name = "starmitts"
	desc = "Thick arm warmers and mittens that reach past the elbow."
	icon_state = "starmittens"
	item_state = "starmittens"

/obj/item/clothing/gloves/ballistic
	name = "ballistic gauntlet"
	desc = "A metal gauntlet armed with a wrist-mounted shotgun."
	icon_state = "ballisticfist"
	item_state = "ballisticfist"
	siemens_coefficient = 1
	fingerprint_chance = 50
	siemens_coefficient = 1
	clipped = 1
	species_restricted = list("exclude",BODYTYPE_GOLEM,BODYTYPE_VAURCA_BREEDER,BODYTYPE_VAURCA_WARFORM)
	drop_sound = 'sound/items/drop/toolbox.ogg'
	pickup_sound = 'sound/items/pickup/toolbox.ogg'
	gender = NEUTER
	var/obj/item/gun/projectile/mounted
	var/gun_type = /obj/item/gun/projectile/shotgun/doublebarrel/pellet

/obj/item/clothing/gloves/ballistic/Initialize()
	. = ..()
	if(!mounted)
		var/obj/item/gun/projectile/new_gun = new gun_type (src)
		mounted = new_gun
		mounted.name = "wrist-mounted [initial(new_gun.name)]"

/obj/item/clothing/gloves/ballistic/Destroy()
	if(mounted)
		QDEL_NULL(mounted)
	return ..()

/obj/item/clothing/gloves/ballistic/Touch(atom/A, mob/living/user, proximity)
	if(!proximity)
		return

	if(!isliving(A))
		return

	var/mob/living/L = A

	if(user.a_intent == I_HURT)
		if(mounted)
			spark(user, 3, alldirs)
			mounted.Fire(L, user)

/obj/item/clothing/gloves/ballistic/attackby(obj/item/W, mob/user)
	..()
	if(mounted)
		mounted.load_ammo(W, user)
		return

/obj/item/clothing/gloves/ballistic/verb/unload_shells()
	set name = "Unload Ballistic Gauntlet "
	set desc = "Unload the shells from the gauntlet's mounted gun."
	set category = "Object"
	set src in usr

	if(usr.stat || usr.restrained() || usr.incapacitated())
		return

	if(mounted)
		mounted.unload_ammo(usr)

/obj/item/clothing/gloves/ballistic/attack_self(mob/user as mob)
	unload_shells()

/obj/item/clothing/gloves/ballistic/double
	name = "ballistic gauntlets"
	icon_state = "dual-ballisticfist"
	item_state = "ballisticfist" //just reuse the single inhand
	fingerprint_chance = 0
	gender = PLURAL

/obj/item/clothing/gloves/ballistic/double/Initialize()
	. = ..()
	if(mounted)
		mounted.switch_firemodes()
