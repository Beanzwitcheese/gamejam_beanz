extends Area2D

func _on_body_entered(body: Node2D) -> void:
	Variables.level = "res://Levels/Level_9/Level_9.tscn"
	print('hi')
	get_tree().change_scene_to_file(Variables.level)
