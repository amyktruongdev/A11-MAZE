## test character

extends CharacterBody2D

@export var move_speed : float = 300
@onready var doorslam = $doorslam
@onready var walk = $walk
func _physics_process(_delta):
	var walking = false
	var x_axis = 0
	var y_axis = 0
	if Input.is_action_just_pressed("right"):
		x_axis += 50
	elif Input.is_action_just_pressed("left"):
		x_axis -= 50
	if Input.is_action_just_pressed("up"):
		y_axis -= 50
	elif Input.is_action_just_pressed("down"):
		y_axis += 50
	
	var input_direction = Vector2(x_axis, y_axis)
	
	velocity = input_direction * move_speed
	move_and_collide(input_direction)
	if x_axis != 0:
		walk.play()
	elif move_and_collide(input_direction) && y_axis != 0:
		doorslam.play()
	elif move_and_collide(input_direction) && x_axis != 0:
		doorslam.play()
	elif y_axis != 0:
		walk.play()
