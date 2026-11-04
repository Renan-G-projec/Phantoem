# Ad Maiorem Dei Gloriam!
## Autoload: GameManager
extends Node

var map_state: Dictionary = {
	"boiler_room": {
		"unlocked": false,
		"fixed": false,
		"gear_placed": false,
		"lever_fixed": false,
		"fuel_placed": false
	},
	"elevator": {
		"fuse_placed": false,
		"valve_wrenched": false,
		"woods_removed": false
	},
	"train": {
		"lever_replaced": false,
		"fuel_placed": false,
		"wheel_replaced": false,
		"rocks_removed": false
	}
}

var puzzle_state: Dictionary = {
	"antenna": {
		"placed": false,
		"solved": false
	},
	"ticked_room": {
		"unlocked": false
	},
	"deposit": {
		"unlocked": false
	}
}

var item_state: Dictionary = {
	"wrench": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"antenna": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"boiler_room_card": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"tnt": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"wheel": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"deposit_key": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"boiler_room_fuel": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"train_fuel": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"train_lever": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"boiler_room_gear": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"crt_fuse": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
	"boiler_room_lever": {
		"current_room": null,
		"is_picked": false,
		"position": null
	},
}

@export_enum("none", "wrench", "antenna", "boiler_room_card", "tnt", "wheel", "deposit_key", "boiler_room_fuel", "train_fuel", "train_lever", "boiler_room_gear", "crt_fuse", "boiler_room_lever")\
	var current_item: String = "none" 
