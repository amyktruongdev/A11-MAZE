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
	

func _on_new_game_mouse_entered():
	$newgamesound.play()


func _on_load_mouse_entered():
	$loadgamesound.play()


func _on_options_mouse_entered():
	$optiongamesound.play()


func _on_quit_mouse_entered():
	$quitgamesound.play()


func _on_leaderboard_pressed():
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores(5).sw_get_scores_complete
	#get_tree().change_scene_to_file("res://Interface/options_screen.tscn")
	await get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
	


func _on_leaderboard_mouse_entered():
	$leaderboardsound.play()
