extends CharacterBody2D

var currPos = [0,0]

func _input(event):
	if event.is_action_pressed("ui_right"):
		currPos[0] += 10
	elif event.is_action_pressed("ui_left"):
		currPos[0] -= 10
	elif event.is_action_pressed("ui_left"):
		currPos[0] -= 10
	elif event.is_action_pressed("ui_up"):
		currPos[1] -= 10
	elif event.is_action_pressed("ui_down"):
		currPos[1] += 10
					 
	self.position = Vector2(currPos[0],currPos[1])
