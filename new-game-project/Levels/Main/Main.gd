extends Control

func _ready() -> void:
	$AudioStreamPlayer2D.play()
func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level Select/Level_select.tscn")

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file(Variables.level)
