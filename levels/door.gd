# Ad Maiorem Dei Gloriam!
class_name Door
extends Area2D

@export var id: int = 0
@export_file("*.tscn") var target_room_scene: String = "res://levels/train_station/game_spawn.tscn"
@export var target_door_id: int = 0

var _player_is_on_area: bool = false

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") && _player_is_on_area:
		SceneManager.go_to_room(target_room_scene, target_door_id)
		Utils.print("Going to room: %s" % target_room_scene)

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		_player_is_on_area = true


func _on_body_exited(body: Node2D) -> void:
	if body is Player:
		_player_is_on_area = false
