class_name Player extends CharacterBody2D

@export_group("Movement")
@export var speed := 300.0
@export var sprint_speed := 350.0

@export_group("Jump")
@export var jump_velocity := -400.0
@export var jump_hold_gravity := -400.0

@export_group("Gravity")
@export var gravity := 980.0
@export var fall_gravity := 980.0
