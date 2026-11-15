extends CharacterBody2D


var SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	var direction = randi_range(-180,180)
	velocity = Vector2(0,SPEED).rotated(direction)
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
