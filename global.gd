extends Node





# Called when the node enters the scene tree for the first time.

func _ready():
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
