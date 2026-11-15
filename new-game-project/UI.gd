extends CanvasLayer
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if Variables.level == 'res://Levels/Level_10/Level_10.tscn':
		$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Health.text = str(Variables.health)
	if Variables.health <= 8:
		$Heart9.frame = 1
	else:
		$Heart9.frame = 0

	if Variables.health <= 7:
		$Heart8.frame = 1
	else:
		$Heart8.frame = 0
	
	if Variables.health <= 6:
		$Heart7.frame = 1
	else:
		$Heart7.frame = 0
		
	if Variables.health <= 5:
		$Heart6.frame = 1
	else:
		$Heart6.frame = 0
		
	if Variables.health <= 4:
		$Heart5.frame = 1
	else:
		$Heart5.frame = 0
		
	if Variables.health <= 3:
		$Heart4.frame = 1
	else:
		$Heart4.frame = 0
	
	if Variables.health <= 2:
		$Heart3.frame = 1
	else:
		$Heart3.frame = 0
		
	if Variables.health <= 1:
		$Heart2.frame = 1
	else:
		$Heart2.frame = 0

	if Variables.level == 'res://Levels/Level_10/Level_10.tscn':
		$Time.text = 'Time' + str(time)
	

func _on_timer_timeout() -> void:
	time += 1
	$Timer.start()
