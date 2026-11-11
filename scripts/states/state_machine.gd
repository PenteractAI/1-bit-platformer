# state_machine.gd
class_name StateMachine
extends Node

@export var initial_state: State

var current_state: State
var states: Dictionary[Script, State] = { }


func _ready() -> void:
	# Wait for the owner (Player) to be ready
	await owner.ready

	for node in get_children():
		if node is State:
			states[node.get_script()] = node

	if initial_state == null:
		push_error("StateMachine has no initial state assigned.")
		return

	current_state = initial_state
	current_state.enter()


func _physics_process(delta: float) -> void:
	current_state.physics_update(delta)


func _process(delta: float) -> void:
	current_state.update(delta)


func transition_to(state_type: Script) -> void:
	var target_state: State = states.get(state_type)

	if target_state:
		current_state.exit()
		current_state = target_state
		current_state.enter()
		return

	push_error("State '%s' not found." % target_state)
	return
