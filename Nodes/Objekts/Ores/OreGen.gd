extends StaticBody2D

var rand_x
var rand_y

func _ready():
	randomize()
	
	if get_parent().name == "Cave1":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
	if get_parent().name == "Cave2":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.25
		Global.RareOreChance = 0.12
		Global.EpicOreChance = 0.6
		Global.LegendaryOreChance = 0.3
		
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

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		CaveStairs.global_position = Vector2(rand_x, rand_y)
		add_child(CaveStairs)
	
		
	
	


	for i in range(200*Global.CommonOreChance):
		var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		CommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(CommonOre)

	for i in range(200*Global.UncommonOreChance):
		var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		UncommonOre.global_position = Vector2(rand_x, rand_y)
		add_child(UncommonOre)

	for i in range(200*Global.RareOreChance):
		var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		RareOre.global_position = Vector2(rand_x, rand_y)
		add_child(RareOre)

	for i in range(200*Global.EpicOreChance):
		var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		EpicOre.global_position = Vector2(rand_x, rand_y)
		add_child(EpicOre)

	for i in range(200*Global.LegendaryOreChance):
		var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

		rand_x = randf_range(-200,1352)
		rand_y = randf_range(-200,850)
		LegendaryOre.global_position = Vector2(rand_x, rand_y)
		add_child(LegendaryOre)
