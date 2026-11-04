# Ad Maiorem Dei Gloriam!
class_name Item
extends Sprite2D

@export_enum("wrench", "antenna", "boiler_room_card", "tnt", "wheel", "deposit_key", "boiler_room_fuel", "train_fuel", "train_lever", "boiler_room_gear", "crt_fuse", "boiler_room_lever")\
var id: String:
	set(val):
		if id == val: return
		id = val
		
		if _texture_table.has(id):
			texture = _texture_table[id]

var _player_is_on_area: bool = false
var _texture_table: Dictionary[String, Texture2D] = {
	
}

func _pick_item() -> void:
	if GameManager.current_item != "none": return
	GameManager.current_item = id
	
	GameManager.item_state[id]["current_room"] = null
	GameManager.item_state[id]["is_picked"] = true
	
	Utils.print("Colected item %s" % id)
	queue_free()

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") && _player_is_on_area:
		_pick_item()

func _on_collectable_area_body_entered(body: Node2D) -> void:
	if body is Player: 
		_player_is_on_area = true


func _on_collectable_area_body_exited(body: Node2D) -> void:
	if body is Player: 
		_player_is_on_area = false
