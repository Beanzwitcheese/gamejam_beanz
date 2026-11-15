extends Control


func _on_resume_pressed() -> void:
	get_tree().change_scene_to_file(Variables.level)

func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level Select/Level_select.tscn")
