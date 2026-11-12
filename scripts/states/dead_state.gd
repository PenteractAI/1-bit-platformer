class_name DeadState extends PlayerState


# Called once when this state becomes active
func enter() -> void:
	print("Dead state entered.")
	player.hurtbox.queue_free()
	await get_tree().create_timer(0.3).timeout
	get_tree().reload_current_scene()


# Called once when this state is replaced by another
func exit() -> void:
	pass


# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	pass


# Called every frame while this state is active
func update(delta: float) -> void:
	pass
