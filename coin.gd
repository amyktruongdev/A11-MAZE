extends Area2D

@onready var player_vars = get_node("/root/PlayerVariables")
@onready var twinklesparkle = $twinklesparkle
func _on_body_entered(_body):
	player_vars.coins_collected += 1
	print('player_vars: ', player_vars.coins_collected)
	twinklesparkle.play()
	await get_tree().create_timer(1).timeout
	queue_free()
