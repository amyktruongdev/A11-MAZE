extends Node


const SAVE_FILE = "user://save_file.save"
var loaded_stage = "res://Levels/game_level.tscn"
@onready var stars = get_node("/root/PlayerVariables")


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
	
#func _save_to_file():
	#var f = FileAccess.open(SAVE_FILE,FileAccess.WRITE)
	#f.store_string(get_tree().current_scene.scene_file_path)
	#f.close()

func _save_to_file():
	var stars_to_save = "\n" + str(stars.coins_collected)
	print('file saved: stars saved: ' + stars_to_save)
	var k = FileAccess.open(SAVE_FILE,FileAccess.WRITE)
	k.store_string(get_tree().current_scene.scene_file_path + stars_to_save)
	k.close()
	
	

	#print(get_tree().current_scene.scene_file_path)
	
func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		
		print(loaded_stage)
		await _save_to_file()
		get_tree().quit()

func _input(event):
	var scene_path = get_tree().current_scene.scene_file_path
	if scene_path != 'res://Interface/title_screen.tscn':
		if event is InputEventKey and event.pressed:
			if event.keycode == KEY_ESCAPE:
				get_tree().change_scene_to_file("res://Interface/title_screen.tscn")
