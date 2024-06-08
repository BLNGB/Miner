extends StaticBody2D


var currentCave
var i =1
	

func _on_area_2d_body_entered(body: PhysicsBody2D):
	
	if body.name == "Player":
		print("Player detectet")
		currentCave = get_tree().current_scene.name
		i = i+1
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave_"+str(i)+".tscn")
