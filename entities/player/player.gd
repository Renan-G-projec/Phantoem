# Ad Maiorem Dei Gloriam!
class_name Player
extends CharacterBody2D

enum State {
	IDLE,
	WALKING
}

@export var speed: float = 55.0

@onready var sprite: AnimatedSprite2D = %AnimatedSprite2D

var state: State = State.IDLE
var direction: Vector2i = Vector2.DOWN

func _physics_process(delta: float) -> void:
	
	if _update_input():
		state = State.WALKING
		velocity = speed * direction
	else:
		state = State.IDLE
		velocity = Vector2.ZERO
	
	if Input.is_action_just_pressed("drop_item") && GameManager.current_item != "none":
		var front: Vector2 = global_position + Vector2(direction * 8)
		
		SceneManager.instantiate_item(front, GameManager.current_item)
		GameManager.current_item = "none"
	
	move_and_slide()

func _update_input() -> bool:
	var wanted_direction: Vector2 = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	if !wanted_direction: return false
	
	if absf(wanted_direction.x) > absf(wanted_direction.y):
		direction.x = sign(wanted_direction.x)
		direction.y = 0
	else:
		direction.x = 0
		direction.y = sign(wanted_direction.y)
	
	return true
