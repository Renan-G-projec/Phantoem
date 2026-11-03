# Ad Maiorem Dei Gloriam!
class_name Door
extends Area2D

@export var id: int = 0
@export_file("*.tscn") var target_room_scene: String = "res://levels/train_station/game_spawn.tscn"
@export var target_door_id: int = 0

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		SceneManager.go_to_room(target_room_scene, target_door_id)
