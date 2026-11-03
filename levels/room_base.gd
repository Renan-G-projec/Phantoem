# Ad Maiorem Dei Gloriam!
class_name RoomBase
extends Node2D

func _ready() -> void:
	var doors: Array
	
	if SceneManager.target_door_id != -1:
		var player := get_tree().get_first_node_in_group("player") as Player
		if !player: return
		
		doors = get_tree().get_nodes_in_group("doors")
		for door in doors:
			if door.id == SceneManager.target_door_id:
				player.global_position = door.global_position
				return
		
		# No door was found
		push_warning("No door with id %d found in scene." % SceneManager.target_door_id)
