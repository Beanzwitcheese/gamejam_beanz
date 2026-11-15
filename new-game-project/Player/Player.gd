extends CharacterBody2D

var SPEED = Variables.speed 
var JUMP_VELOCITY = Variables.jump
var gravity = Variables.gravity
var jumpable = true
var maxjumps = 1
var jumps = 0
var coyote = false
var spring = false
	
func _process(_delta: float) -> void:
	$Camera2D.align()
	gravity = Variables.gravity
	JUMP_VELOCITY = Variables.jump
	
	#flipping charactrer if gravity flipped or not
	if gravity < 0:
		scale.y = -1
	else:
		scale.y = 1
	
	#restarting level if health = 0
	if Variables.health <= 0:
		Variables.health = 9
		get_tree().change_scene_to_file("res://Levels/Death/Deathscreen.tscn")

	#going to settings
	if Input.is_action_just_pressed("Menu"):
		get_tree().change_scene_to_file('res://Levels/Main/Main.tscn')
	
	if velocity.y:
		$AnimatedSprite2D.play("Jumping")
		
	elif velocity.x > 0:
		$AnimatedSprite2D.play("Walking")
		$AnimatedSprite2D.flip_h = false
	
	elif velocity.x < 0:
		$AnimatedSprite2D.play("Walking")
		$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.play("Waiting")
		
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	elif spring == true:
		velocity.y = JUMP_VELOCITY * 5
		spring = false
	
	else:
		velocity.y = gravity*0.01
	# Handle jump.
	# Adding coyote time
	if Input.is_action_just_pressed("jump"): 
		if jumps < maxjumps:
			velocity.y = JUMP_VELOCITY
			jumps += 1
	if is_on_floor() or is_on_ceiling():
			jumps = 0
			coyote = false
	
	if not is_on_floor() and not is_on_ceiling():
		if jumps < maxjumps and coyote == false:
			$Coyote_time.start()
			coyote = true
			print('time starts')
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("back", "forward")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _on_timer_timeout() -> void:
	jumps = 1

func _on_hitbox_body_entered(_body: Node2D) -> void:
	Variables.health -= 1


func _on_bounce_body_entered(_body: Node2D) -> void:
	velocity.y = JUMP_VELOCITY*3
	print('hi')
