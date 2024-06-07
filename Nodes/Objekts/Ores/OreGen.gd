extends StaticBody2D

var rand_x
var rand_y

func _ready():
	randomize()
	
	var caveName =get_parent().name
	
	for i in range(1):
					var CaveStairs = preload("res://Nodes/Objekts/Stairs/CaveStairs.tscn").instantiate()

					rand_x = randf_range(0,1152)
					rand_y = randf_range(0,650)
					CaveStairs.global_position = Vector2(rand_x, rand_y)
					add_child(CaveStairs)
	
		
	if caveName == "Cave1":
		Global.CommonOreChance = 0.5
		Global.UnommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if caveName == "Cave2":
		Global.CommonOreChance = 0.5
		Global.UnommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if caveName == "Cave3":
		Global.CommonOreChance = 0.5
		Global.UnommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if caveName == "Cave4":
		Global.CommonOreChance = 0.5
		Global.UnommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if caveName == "Cave5":
		Global.CommonOreChance = 0.5
		Global.UnommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
	


	for i in range(1000*Global.CommonOreChance):
		var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()

		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		CommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(CommonOre)

	for i in range(1000*Global.UncommonOreChance):
		var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		UncommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(UncommonOre)

	for i in range(1000*Global.RareOreChance):
		var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		RareOre.global_position = Vector2(rand_x, rand_y)
		add_child(RareOre)

	for i in range(1000*Global.EpicOreChance):
		var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		EpicOre.global_position = Vector2(rand_x, rand_y)
		add_child(EpicOre)

	for i in range(1000*Global.LegendaryOreChance):
		var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		LegendaryOre.global_position = Vector2(rand_x, rand_y)
		add_child(LegendaryOre)
