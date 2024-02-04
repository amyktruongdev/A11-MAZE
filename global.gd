extends Node


const SAVE_FILE = "user://save_file.save"
var loaded_stage = "res://Levels/game_level.tscn"
#var stars =0 


# Called when the node enters the scene tree for the first time.

func _ready():
	get_tree().set_auto_accept_quit(false)
	var f = FileAccess.open('res://apiKey.env',FileAccess.READ)
	var apiKey=f.get_line().strip_edges()
	f.close()
	
	print(apiKey)
	SilentWolf.configure({
		"api_key":    apiKey,
		"game_id": "a11maze",
		"log_level": 3
	})
	#SilentWolf.configure({"api_key": "vAhrxRajwLKXoNOddMvH4Lw2VXqGmfI6PhCKHIDd","game_id": "a11maze","log_level": 1})


	SilentWolf.configure_scores({
		"open_scene_on_close": "res://scenes/MainPage.tscn"
	})
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _save_to_file():
	var f = FileAccess.open(SAVE_FILE,FileAccess.WRITE)
	f.store_string(get_tree().current_scene.scene_file_path)
	f.close()

#func _save_to_file():
	#var f = FileAccess.open(SAVE_FILE,FileAccess.WRITE)
	#f.store_string(get_tree().current_scene.scene_file_path + "\n" + to_string(stars))
	#f.close()
	

	#print(get_tree().current_scene.scene_file_path)
	
func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		print(loaded_stage)
		_save_to_file()
		get_tree().quit()

