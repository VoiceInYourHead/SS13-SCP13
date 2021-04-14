/obj/item/weapon/storage/briefcase
	name = "briefcase"
	desc = "It's made of AUTHENTIC faux-leather and has a price-tag still attached. Its owner must be a real professional."
	icon_state = "briefcase"
	item_state = "briefcase"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 8.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEM_SIZE_HUGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = DEFAULT_BACKPACK_STORAGE

/obj/item/weapon/storage/briefcase/donator
	name = "briefcase"
	desc = "It's made of AUTHENTIC faux-leather and has a price-tag still attached. Its owner must be a real professional."
	icon_state = "briefcase"
	item_state = "briefcase"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 8.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_GARGANTUAN
	max_storage_space = 30

/obj/item/weapon/storage/briefcase/donator/dron
	startswith = list(
		/obj/item/weapon/gun/projectile/revolver/donor,
		/obj/item/ammo_magazine/a127,
		/obj/item/ammo_magazine/a127,
		/obj/item/ammo_magazine/a127
	)