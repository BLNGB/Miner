extends  StaticBody2D


func _on_area_2d_body_entered(body: PhysicsBody2D):

	
	if body.name == "Player":
		Global.CamLimitLeft = -100
		Global.CamLimitRight = 100
		Global.CamLimitTop = -100
		Global.CamLimitBottom =  100
		get_tree().change_scene_to_file("res://Nodes/Areas/InShop.tscn")
