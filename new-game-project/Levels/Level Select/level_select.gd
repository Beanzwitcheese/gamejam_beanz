extends Control

func _on_level_1_pressed() -> void:
	Variables.level = "res://Levels/Level_1/Level_1.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_2_pressed() -> void:
	Variables.level = "res://Levels/Level_2/Level_2.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_3_pressed() -> void:
	Variables.level = "res://Levels/Level_3/Level_3.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_4_pressed() -> void:
	Variables.level = "res://Levels/Level_4/Level_4.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_5_pressed() -> void:
	Variables.level = "res://Levels/Level_5/Level_5.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_6_pressed() -> void:
	Variables.level = "res://Levels/Level_6/Level_6.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_7_pressed() -> void:
	Variables.level = "res://Levels/Level_7/Level_7.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_8_pressed() -> void:
	Variables.level = "res://Levels/Level_8/Level_8.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_9_pressed() -> void:
	Variables.level = "res://Levels/Level_9/Level_9.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_level_10_pressed() -> void:
	Variables.level = "res://Levels/Level_10/Level_10.tscn"
	get_tree().change_scene_to_file(Variables.level)

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file('res://Levels/Main/Main.tscn')
