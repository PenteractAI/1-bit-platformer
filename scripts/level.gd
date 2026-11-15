class_name Level extends Node

@export var level_spawner: LevelSpawner


func spawn_player(player: Player) -> void:
	player.global_position = level_spawner.get_spawn_position()
	player.velocity = Vector2.ZERO
