class_name WallSlideState extends PlayerState


# Called once when this state becomes active
func enter() -> void:
	print("Wall Slide state entered.")


# Called once when this state is replaced by another
func exit() -> void:
	pass


# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	var direction := get_input_direction()
	apply_horizontal_movement(direction)
	apply_gravity(delta)
	player.move_and_slide()


# Called every frame while this state is active
func update(delta: float) -> void:
	pass
