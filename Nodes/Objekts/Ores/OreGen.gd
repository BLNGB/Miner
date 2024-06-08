extends StaticBody2D

var rand_x
var rand_y

var minX = -2
var maxX = 1252

var minY = -2
var maxY = 750

func _ready():
	randomize()
	
	if get_parent().name == "Cave1":
		Global.CommonOreChance = 0.07
		Global.UncommonOreChance = 0.04
		Global.RareOreChance = 0.03
		Global.EpicOreChance = 0.02
		Global.LegendaryOreChance = 0.01
		
	if get_parent().name == "Cave2":
		Global.CommonOreChance = 0.05
		Global.UncommonOreChance = 0.06
		Global.RareOreChance = 0.07
		Global.EpicOreChance = 0.08
		Global.LegendaryOreChance = 0.09
		
	if get_parent().name == "Cave3":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if get_parent().name == "Cave4":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
	
	if get_parent().name == "Cave5":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
	

	for i in range(1000):
		print(randi() % Global.CommonOreChance*1000)	
	
	
	
	
	for i in range(1):
		var CaveStairs = preload("res://Nodes/Objekts/Stairs/CaveStairs.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		CaveStairs.global_position = Vector2(rand_x, rand_y)
		add_child(CaveStairs)

	for i in range(1000*Global.CommonOreChance):
		var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		CommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(CommonOre)

	for i in range(1000*Global.UncommonOreChance):
		var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		UncommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(UncommonOre)

	for i in range(1000*Global.RareOreChance):
		var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		RareOre.global_position = Vector2(rand_x, rand_y)
		add_child(RareOre)

	for i in range(1000*Global.EpicOreChance):
		var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		EpicOre.global_position = Vector2(rand_x, rand_y)
		add_child(EpicOre)

	for i in range(1000*Global.LegendaryOreChance):
		var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

		randNum(minX,maxX,minY,maxY)
		LegendaryOre.global_position = Vector2(rand_x, rand_y)
		add_child(LegendaryOre)
		
		
func randNum(minX,maxX,minY,maxY):
	rand_x = randf_range(minX,maxX)
	rand_y = randf_range(minY,maxY)
	
