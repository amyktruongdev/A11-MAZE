extends Area2D

@onready var player_vars = get_node("/root/PlayerVariables")

func _on_body_entered(_body):
	player_vars.coins_collected += 1
	print(player_vars.coins_collected)
	queue_free()	
