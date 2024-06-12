extends StaticBody2D

@onready var caveNr = get_meta("Cave")
@onready var dmgOverTime = get_meta("DmgOverTime")

@onready var commonOreChance = get_meta("commonOreChance")
@onready var uncommonOreChance = get_meta("uncommonOreChance")
@onready var rareOreChance = get_meta("rareOreChance")
@onready var epicOreChance = get_meta("epicOreChance")
@onready var legendaryOreChance = get_meta("legendaryOreChance")

func _ready():
	
	if caveNr != null:
		$CaveEntrance.texture = load("res://Sprites/Objekts/Caves/Cave"+caveNr+".png")
		

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		Global.currentCave = caveNr
		Global.DmgOverTime = dmgOverTime
		
		Global.CommonOreChance = commonOreChance
		Global.UncommonOreChance = uncommonOreChance
		Global.RareOreChance = rareOreChance
		Global.EpicOreChance = epicOreChance
		Global.LegendaryOreChance = legendaryOreChance
		
		Global.CamLimitLeft = 0
		Global.CamLimitRight = 0
		Global.CamLimitTop = 0
		Global.CamLimitBottom = 0
		
		Global.OverCaveEntrance = true


func _on_area_2d_body_exited(body):
	Global.OverCaveEntrance = false
