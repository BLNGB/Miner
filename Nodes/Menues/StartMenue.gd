extends Node2D


func _on_play_button_up():
	get_tree().change_scene_to_file("res://Nodes/Areas/outside.tscn")


func _on_option_button_up():
	pass # Replace with function body.


func _on_off_button_up():
	get_tree().quit()
