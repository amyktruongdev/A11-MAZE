extends Area2D

func _on_body_entered(body):
	if body.name == "player2":
		print("collided")
	#insert script here
 
