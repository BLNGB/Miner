extends StaticBody2D

var rand_x
var rand_y

func _ready():
	randomize()
	
	if get_parent().name == "Cave1":
		Global.CommonOreChance = 0.07
		Global.UncommonOreChance = 0.04
		Global.RareOreChance = 0.03
		Global.EpicOreChance = 0.02
		Global.LegendaryOreChance = 0.1
		
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
		
	
	
	for i in range(1):
		var CaveStairs = preload("res://Nodes/Objekts/Stairs/CaveStairs.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		CaveStairs.global_position = Vector2(rand_x, rand_y)
		add_child(CaveStairs)

	for i in range(100*Global.CommonOreChance,1000*Global.CommonOreChance):
		var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		CommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(CommonOre)

	for i in range(100*Global.UncommonOreChance,1000*Global.CommonOreChance):
		var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		UncommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(UncommonOre)

	for i in range(100*Global.RareOreChance,1000*Global.CommonOreChance):
		var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		RareOre.global_position = Vector2(rand_x, rand_y)
		add_child(RareOre)

	for i in range(100*Global.EpicOreChance,1000*Global.CommonOreChance):
		var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		EpicOre.global_position = Vector2(rand_x, rand_y)
		add_child(EpicOre)

	for i in range(100*Global.LegendaryOreChance,1000*Global.CommonOreChance):
		var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

		rand_x = randf_range(-100,1252)
		rand_y = randf_range(-100,750)
		LegendaryOre.global_position = Vector2(rand_x, rand_y)
		add_child(LegendaryOre)
