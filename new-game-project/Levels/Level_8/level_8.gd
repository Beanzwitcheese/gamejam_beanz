extends Node2D
var time = 5
func _ready() -> void:
	$Timer.start()
	$Timer2.start()
func _on_timer_timeout() -> void:
	var fish = preload('res://Enemies/White_Fish.tscn').instantiate()
	# Choose a random location on Path2D.
	var mob_spawn_location = Vector2(750, 0)

	# Set the mob's position to the random location.
	fish.position = mob_spawn_location

	# Set the mob's direction perpendicular to the path direction.
	var direction = randi_range(0,360)

	# Add some randomness to the direction.
	direction += randf_range(-PI / 4, PI / 4)
	fish.rotation = direction

	# Choose the velocity for the mob.
	var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	velocity = velocity.rotated(direction)
	time -= 0.1
	if time <= 0.1:
		time = 1
	$Timer.wait_time = time
	$Timer.start()
	# Spawn the mob by adding it to the Main scene.
	add_child(fish)


func _on_timer_2_timeout() -> void:
	var fish2 = preload('res://Enemies/Fish.tscn').instantiate()
	# Choose a random location on Path2D.
	var mob_spawn_location = Vector2(4200, 0)

	# Set the mob's position to the random location.
	fish2.position = mob_spawn_location

	# Set the mob's direction perpendicular to the path direction.
	var direction = randi_range(0,360)

	# Add some randomness to the direction.
	direction += randf_range(-PI / 4, PI / 4)
	fish2.rotation = direction

	# Choose the velocity for the mob.
	var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	velocity = velocity.rotated(direction)
	time -= 0.1
	if time <= 0.1:
		time = 1
	$Timer2.wait_time = time
	$Timer2.start()
	# Spawn the mob by adding it to the Main scene.
	add_child(fish2)
