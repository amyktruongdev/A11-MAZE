extends Control

var player_name
var score = randi() % 100 + 10

@onready var leaderboard_scene = preload("res://addons/silent_wolf/Scores/Leaderboard.tscn")
#
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var input_text = $LineEdit.text
	player_name = input_text
	#SilentWolf.Scores.save_score("test", 4)
	
	#var sw_result: Dictionary = await SilentWolf.Scores.save_score(player_name, player_score).sw_save_score_complete
	#print("Score persisted successfully: " + str(sw_result.score_id))
	
	
	await SilentWolf.Scores.save_score(player_name, score).sw_save_score_complete
	#print("Score persisted successfully: " + str(sw_result.score_id))
	
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores().sw_get_scores_complete
	#print("Scores: " + str(sw_result.scores))
	#print("Completed saving")
	await get_tree().change_scene_to_packed(leaderboard_scene)
	#SilentWolf.configure_scores_open_scene_on_close()
	#print("completed leaderboard")
	#pass # Replace with function body.
	
