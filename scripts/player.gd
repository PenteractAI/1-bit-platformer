class_name Player extends CharacterBody2D

@export_group("Collisions")
@export var hurtbox: Area2D

@export_group("States")
@export var state_machine: StateMachine

@export_group("Movement")
@export var speed := 100.0
@export var sprint_speed := 250.0
@export var acceleration_per_sec := 1000.0

@export_group("Jump")
@export var jump_velocity := -300.0
@export var jump_hold_gravity := 400.0

@export_group("Gravity")
@export var gravity := 980.0
@export var fall_gravity := 980.0

var is_sprinting: bool = false


func _on_hurtbox_body_entered(_body: Node2D) -> void:
	die()


func _on_hurtbox_area_entered(area: Area2D) -> void:
	die()


func die() -> void:
	state_machine.transition_to(DeadState)
