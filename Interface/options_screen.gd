extends Control


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Interface/title_screen.tscn")


func _on_back_mouse_entered():
	$backgamesound.play()


func _on_resize_gui_mouse_entered():
	$resizeguigamesound.play()


func _on_volume_mouse_entered():
	$volumegamesound.play()
