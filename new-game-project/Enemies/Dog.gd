extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	velocity.x = SPEED
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
func _on_timer_timeout() -> void:
	velocity.y = JUMP_VELOCITY
