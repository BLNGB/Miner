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
	
	var commonOreCount = 0
	var uncommonOreCount = 0
	var rareOreCount = 0
	var epicOreCount = 0
	var legendaryOreCount = 0
	
	var commonOre = randi_range(Global.CommonOreChance*100,Global.CommonOreChance*5000)
	var uncommonOre = randi_range(Global.UncommonOreChance*90,Global.UncommonOreChance*5000)
	var rareOre = randi_range(Global.RareOreChance*80,Global.RareOreChance*5000)
	var epicOre = randi_range(Global.EpicOreChance*70,Global.EpicOreChance*5000)
	var legendaryOre = randi_range(Global.LegendaryOreChance*60,Global.LegendaryOreChance*5000)
	

	for i in range(1000):
		
		if i == 0:
			var CaveStairs = preload("res://Nodes/Objekts/Stairs/CaveStairs.tscn").instantiate()
			randNum(minX,maxX,minY,maxY)
			CaveStairs.global_position = Vector2(rand_x, rand_y)
			add_child(CaveStairs)
			
		if commonOre != commonOreCount:
			commonOreCount+=1
			var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()
	
			randNum(minX,maxX,minY,maxY)
			CommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(CommonOre)
			
		if uncommonOre != uncommonOreCount:
			uncommonOreCount+=1
			var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

			randNum(minX,maxX,minY,maxY)
			UncommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(UncommonOre)
			
		if rareOre != rareOreCount:
			rareOreCount+=1
			var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

			randNum(minX,maxX,minY,maxY)
			RareOre.global_position = Vector2(rand_x, rand_y)
			add_child(RareOre)
		
		if epicOre != epicOreCount:
			epicOreCount+=1
			var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

			randNum(minX,maxX,minY,maxY)
			EpicOre.global_position = Vector2(rand_x, rand_y)
			add_child(EpicOre)
		
		if legendaryOre != legendaryOreCount:
			legendaryOreCount+=1
			var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

			randNum(minX,maxX,minY,maxY)
			LegendaryOre.global_position = Vector2(rand_x, rand_y)
			add_child(LegendaryOre)
		
	print("CommonOre "+str(commonOreCount))
	print("UncommonOre "+str(uncommonOreCount))
	print("RareOre "+str(rareOreCount))
	print("EpicOre "+str(epicOreCount))
	print("LegendaryOre "+str(legendaryOreCount))
		
func randNum(minX,maxX,minY,maxY):
	rand_x = randf_range(minX,maxX)
	rand_y = randf_range(minY,maxY)
	
