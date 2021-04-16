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
		/obj/item/ammo_magazine/a127,
		/obj/item/clothing/gloves/tactical/donor,
		/obj/item/clothing/head/helmet/scp/donor,
		/obj/item/clothing/shoes/donor,
		/obj/item/clothing/suit/armor/vest/scp/donor,
		/obj/item/clothing/under/scp/donor
	)
	can_hold = list(
		/obj/item/weapon/gun/projectile/revolver/donor,
		/obj/item/ammo_magazine/a127,
		/obj/item/ammo_magazine/a127,
		/obj/item/ammo_magazine/a127,
		/obj/item/clothing/gloves/tactical/donor,
		/obj/item/clothing/head/helmet/scp/donor,
		/obj/item/clothing/shoes/donor,
		/obj/item/clothing/suit/armor/vest/scp/donor,
		/obj/item/clothing/under/scp/donor
	)

/obj/item/weapon/storage/briefcase/donator/kikita
	startswith = list(
		/obj/item/weapon/gun/projectile/automatic/scp/donor/ak74,
		/obj/item/ammo_magazine/scp/ak,
		/obj/item/ammo_magazine/scp/ak,
		/obj/item/ammo_magazine/box/a762
	)
	can_hold = list(
		/obj/item/weapon/gun/projectile/automatic/scp/donor/ak74,
		/obj/item/ammo_magazine/scp/ak,
		/obj/item/ammo_magazine/scp/ak,
		/obj/item/ammo_magazine/box/a762
	)

/obj/item/weapon/storage/briefcase/donator/corporal
	startswith = list(
		/obj/item/weapon/gun/projectile/automatic/scp/donor/ierichon,
		/obj/item/ammo_magazine/scp/ierichon,
		/obj/item/ammo_magazine/scp/ierichon,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/box/c45donor,
		/obj/item/ammo_magazine/box/c45donor/rubber,
		/obj/item/clothing/accessory/holster/donor
	)
	can_hold = list(
		/obj/item/weapon/gun/projectile/automatic/scp/donor/ierichon,
		/obj/item/ammo_magazine/scp/ierichon,
		/obj/item/ammo_magazine/scp/ierichon,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/ierichon/rubber,
		/obj/item/ammo_magazine/box/c45donor,
		/obj/item/ammo_magazine/box/c45donor/rubber,
		/obj/item/clothing/accessory/holster/donor
	)