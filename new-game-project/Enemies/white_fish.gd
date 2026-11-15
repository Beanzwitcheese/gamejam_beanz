extends CharacterBody2D


const SPEED = 500.0
var collision_count = 2

func _ready() -> void:
	velocity.x = SPEED
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		collision_count += 2
		velocity = Vector2(SPEED,0).rotated(collision_count)
