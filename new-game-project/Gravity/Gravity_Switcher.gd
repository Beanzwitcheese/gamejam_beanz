extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	Variables.gravity *= -1
	Variables.jump *= -1 
