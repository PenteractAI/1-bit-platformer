class_name FallState extends PlayerState


# Called once when this state becomes active
func enter() -> void:
	print("Fall state entered.")


# Called once when this state is replaced by another
func exit() -> void:
	pass


# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	var direction := get_input_direction()
	apply_horizontal_movement(direction)
	apply_gravity(delta)
	player.move_and_slide()

	if player.is_on_floor():
		if direction == 0.0:
			state_machine.transition_to(IdleState)
		else:
			state_machine.transition_to(RunState)


# Called every frame while this state is active
func update(delta: float) -> void:
	pass
