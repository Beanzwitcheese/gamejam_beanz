extends Area2D

func _on_body_entered(body: Node2D) -> void:
	Variables.level = "res://Levels/Level_8/Level_8.tscn"
	print('hi')
	get_tree().change_scene_to_file(Variables.level)
