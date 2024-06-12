extends StaticBody2D


@onready var layer =1
	

func _on_area_2d_body_entered(body: PhysicsBody2D):
	
	layer+=1
	
	if layer>2:
		get_tree().change_scene_to_file("res://Nodes/Areas/outside.tscn")
	
	if body.name == "Player":
		print("Player detectet"+str(layer))
		
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave.tscn")
