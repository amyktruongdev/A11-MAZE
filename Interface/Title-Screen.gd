extends Control


func _on_new_game_pressed():
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://Levels/game_level.tscn")
	

func _on_load_pressed():
	pass # Replace with function body.





func _on_quit_pressed():
	get_tree().quit()
	

func _on_options_pressed():
	get_tree().change_scene_to_file("res://Interface/options_screen.tscn")
