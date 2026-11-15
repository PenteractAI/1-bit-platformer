class_name LevelSpawner extends Node2D

@export var spawn_marker: Marker2D


func get_spawn_position() -> Vector2:
	return spawn_marker.global_position
