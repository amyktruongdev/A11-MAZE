## test character

extends CharacterBody2D

@export var move_speed : float = 300
@onready var doorslam = $doorslam

func _physics_process(_delta):
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
	
	if move_and_collide(input_direction):
		doorslam.play()
		
