# Ad Maiorem Dei Gloriam!
## Autoload: SceneManager
extends Node

var current_room: Node2D
var target_door_id: int = -1

const MAIN_UID = 'uid://b48l1u6if8ivk'
var is_on_main: bool

func _ready() -> void:
	is_on_main = ResourceLoader.get_resource_uid(get_tree().current_scene.scene_file_path) == ResourceUID.text_to_id(MAIN_UID)

# This function goes to the room. Fails if the target room has not a door to it
func go_to_room(room: String, door_id: int) -> void:
	return
	
