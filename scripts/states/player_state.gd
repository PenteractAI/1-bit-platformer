class_name PlayerState extends State

@onready var state_machine: StateMachine = get_parent()

var player: Player
var direction: float


func _ready() -> void:
	await owner.ready
	player = owner as Player
	assert(
		player != null,
		"The PlayerState state type must be used only in the player scene. It needs the owner to be a Player node.",
	)


func get_input_direction() -> float:
	return Input.get_axis("move_left", "move_right")


func apply_horizontal_movement(direction: float) -> void:
	player.velocity.x = direction * player.speed


func apply_gravity(delta: float, max_fall_speed: float = INF) -> void:
	player.velocity.y = minf(player.velocity.y + player.gravity * delta, max_fall_speed)
