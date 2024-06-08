extends StaticBody2D


func _on_area_2d_body_entered(body:CharacterBody2D):
	if body.name == "Player":
		Global.CamLimitLeft = 0
		Global.CamLimitRight = 0
		Global.CamLimitTop = 0
		Global.CamLimitBottom = 0
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave_1.tscn")
