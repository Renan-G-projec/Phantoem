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
	}
}
