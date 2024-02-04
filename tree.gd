extends StaticBody2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print ("u hit the tree")
	#insert script here
