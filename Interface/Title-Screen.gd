extends Control
@export var stars = "res://global.gd"
var loaded_stars = 0
var loaded_stage = "res://Levels/game_level.tscn"
const SAVE_FILE = "user://save_file.save"
func _load_file():
	if FileAccess.file_exists(SAVE_FILE):
		print(SAVE_FILE)
		var f = FileAccess.open(SAVE_FILE, FileAccess.READ)
		print(f.get_as_text())
		loaded_stage = (f.get_line().strip_edges())
		print(loaded_stage + " " + f.get_line().strip_edges())
		loaded_stars = int(f.get_line())
		print('loaded stars: ',loaded_stars as int )
		f.close()

func _on_new_game_pressed():
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://Levels/game_level.tscn")

func _on_load_pressed():
	_load_file()
	if loaded_stage.contains("res://addons/silent_wolf/Scores/Leaderboard.tscn"):
		_on_leaderboard_pressed()
	else:
		get_tree().change_scene_to_file(loaded_stage)
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
