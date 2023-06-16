GLOBAL_LIST_EMPTY(scpUNKNOWNs)

/mob/living/carbon/human/scp_unk
	desc = "A mysterious person."
	SCP = /datum/scp/SCP_UNK
	see_invisible = SEE_INVISIBLE_NOLIGHTING
	see_in_dark = 7
	var/next_shit = 0

/mob/living/carbon/human/scp_unk/examine(mob/user)
	user << "<b><span class = 'euclid'><big>SCP-XXX</big></span></b> - [desc]"

/datum/scp/SCP_UNK
	name = "SCP-XXX"
	designation = "XXX"
	classification = EUCLID

/obj/sprite_helper/scp_unk
	icon = 'icons/mob/scpunknown1.dmi'

/mob/living/carbon/human/scp_unk/IsAdvancedToolUser()
	return FALSE

/mob/living/carbon/human/scp_unk/New()
	..()

	spawn (20)
		fix_icons()

		// fix names
		real_name = "SCP-XXX"
		SetName(real_name)
		if(mind)
			mind.name = real_name

	set_species("SCP-XXX")
	GLOB.scpUNKNOWNs += src


/mob/living/carbon/human/scp_unk/Destroy()
	GLOB.scpUNKNOWNs -= src
	..()

/mob/living/carbon/human/scp_unk/Move()
	..()
	update_stuff()

/mob/living/carbon/human/scp_unk/forceMove(destination)
	. = ..(destination)
	update_stuff()

/mob/living/carbon/human/scp_unk/proc/update_stuff()
	// stand_icon tends to come back after movement
	fix_icons()

/mob/living/carbon/human/scp_unk/proc/fix_icons()
	icon = null
	icon_state = null
	stand_icon = null
	lying_icon = null
	update_icon = FALSE

	if (!vis_contents.len)
		vis_contents += new /obj/sprite_helper/scp_unk

	// we're lying, turn right
	var/obj/sprite_helper/scp_unk/SH = vis_contents[vis_contents.len]

	if (lying || resting)
		SH.icon = turn(icon('icons/mob/scpunknown1.dmi'), 90)
	else
		SH.icon = 'icons/mob/scpunknown1.dmi'

	SH.dir = dir

/mob/living/carbon/human/scp_unk/get_pressure_weakness()
	return 0

/mob/living/carbon/human/scp_unk/handle_breath()
	return 1

/mob/living/carbon/human/scp_unk/movement_delay()
	return 1.0

/mob/living/carbon/human/scp_unk/Life()
	if(world.time >= next_shit)
		next_shit = world.time+rand(2 MINUTES, 4 MINUTES)
		var/feces = pick(/obj/effect/decal/cleanable/black_goo)
		new feces(loc)
		return

/mob/living/carbon/human/attack_hand(mob/living/carbon/M)
	if (!isscpUNK(M) || src == M)
		return ..(M)
	var/mob/living/carbon/human/scp_unk/H = M
	if (H.a_intent == I_HURT)
		visible_message("<span class = 'danger'><big>[H] touches [src]!</big></span>")
		Paralyse(1000)
		Weaken(1500)