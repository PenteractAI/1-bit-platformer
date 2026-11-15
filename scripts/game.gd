extends Node

@export var player: Player

@export_group("Levels")
@export var level_container: Node2D
@export var levels: Array[PackedScene]

var current_level_idx := 0


func _ready() -> void:
	switch_level(0)


func switch_level(level_idx: int) -> void:
	if level_idx < 0 or level_idx >= levels.size():
		push_error("Level index %d out of range (0-%d)." % [level_idx, levels.size() - 1])
		return

	_clear_level_container()

	var level := levels[level_idx].instantiate() as Level
	assert(
		level != null,
		"The scene at index %d must have the Level script on its root node." % level_idx,
	)

	level_container.add_child(level)
	level.spawn_player(player)
	current_level_idx = level_idx


func next_level() -> void:
	switch_level(current_level_idx + 1)


func _clear_level_container() -> void:
	for child in level_container.get_children():
		level_container.remove_child(child)
		child.queue_free()
