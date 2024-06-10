extends StaticBody2D

var caveNr
@onready var caveName = get_meta("Cave")

func _ready():
	print(caveName)
	if caveName != null:
		$Cave.texture = load("res://Sprites/Objekts/Caves/"+caveName+".png")

func _on_area_2d_body_entered(body:CharacterBody2D):
	if body.name == "Player":

		var stringArr = caveName.split("e")
		caveNr = stringArr[1]
		
		Global.CamLimitLeft = 0
		Global.CamLimitRight = 0
		Global.CamLimitTop = 0
		Global.CamLimitBottom = 0
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave_"+str(caveNr)+".tscn")
