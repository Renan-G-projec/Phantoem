# Ad Maiorem Dei Gloriam!
## Autoload: SceneManager
extends Node

var current_room: Node
var target_door_id: int = -1
var is_on_main: bool

const MAIN_UID = 'uid://b48l1u6if8ivk'
const ITEM_SCENE = "uid://cae8mefce8136"

var _item_scene: PackedScene = preload(ITEM_SCENE)

func _ready() -> void:
	is_on_main = ResourceLoader.get_resource_uid(get_tree().current_scene.scene_file_path) == ResourceUID.text_to_id(MAIN_UID)

	current_room = get_tree().current_scene

	if is_on_main:
		pass

# This function goes to the room. Fails if the target room has not a door to it
func go_to_room(room: String, door_id: int) -> void:
	target_door_id = door_id
	if is_on_main:
		pass
	else:
		get_tree().change_scene_to_file(room)
		await get_tree().scene_changed
		current_room = get_tree().current_scene

func instantiate_item(global_position: Vector2, item_type: String):
	Utils.print("Instantiated item %s at %v" % [item_type, global_position])
	var item: Item = _item_scene.instantiate()
	current_room.add_child(item)
	
	item.global_position = global_position
	item.id = item_type
