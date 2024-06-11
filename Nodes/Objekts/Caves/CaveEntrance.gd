extends StaticBody2D

var caveNr
@onready var caveName = get_meta("Cave")
@onready var dmgOverTime = get_meta("DmgOverTime")

func _ready():
	

	if caveName != null:
		$CaveEntrance.texture = load("res://Sprites/Objekts/Caves/"+caveName+".png")
		

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		
		Global.DmgOverTime = dmgOverTime
		
		var stringArr = caveName.split("e")
		caveNr = stringArr[1]
		Global.currentCave = caveNr
		
		Global.CamLimitLeft = 0
		Global.CamLimitRight = 0
		Global.CamLimitTop = 0
		Global.CamLimitBottom = 0
		get_tree().change_scene_to_file("res://Nodes/Areas/Cave.tscn")
