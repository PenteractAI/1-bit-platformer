class_name Level extends Node

@export var level_spawner: LevelSpawner
@export var level_exit: LevelExit

signal level_exited


func spawn_player(player: Player) -> void:
	player.global_position = level_spawner.get_spawn_position()
	player.velocity = Vector2.ZERO


func _on_level_exit_exit_entered() -> void:
	level_exited.emit()
