class_name JumpState extends PlayerState


# Called once when this state becomes active
func enter() -> void:
	print("Jump state entered.")
	player.velocity.y = player.jump_velocity


# Called once when this state is replaced by another
func exit() -> void:
	pass


# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	var direction := get_input_direction()
	apply_horizontal_movement(direction)
	apply_gravity(delta)
	player.move_and_slide()

	if player.velocity.y >= 0:
		state_machine.transition_to(FallState)


# Called every frame while this state is active
func update(delta: float) -> void:
	pass
