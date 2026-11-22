class_name LevelExit extends Node2D

signal exit_entered


func _on_area_2d_body_entered(body: Node2D) -> void:
	exit_entered.emit()
