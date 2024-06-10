extends StaticBody2D

var caveNr


func _on_area_2d_body_entered(body:CharacterBody2D):
	if body.name == "Player":
		

		var path = $Sprite2D.get_texture().get_load_path()
		var stringArr = path.split("e")
		var stringArr2 = stringArr[3].split(".")
		caveNr = stringArr2[0]
		
		Global.CamLimitLeft = 0
		Global.CamLimitRight = 0
		Global.CamLimitTop = 0
		Global.CamLimitBottom = 0
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave_"+str(caveNr)+".tscn")
