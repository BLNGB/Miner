extends  StaticBody2D


func _on_area_2d_body_entered(body: PhysicsBody2D):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://Nodes/Areas/InShop.tscn")
