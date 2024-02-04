extends Area2D
@onready var success = $success
func _on_body_entered(_body):
	success.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().change_scene_to_file("res://Levels/level_2.tscn")
