extends StaticBody2D

var rand_x
var rand_y

var minX = -2
var maxX = 1252

var minY = -2
var maxY = 750

var maxOre= 500

func _ready(): 
	randomize()
	
	if get_parent().name == "Cave1":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.2
		Global.RareOreChance = 0.15
		Global.EpicOreChance = 0.1
		Global.LegendaryOreChance = 0.05
		
	if get_parent().name == "Cave2":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.2
		Global.RareOreChance = 0.15
		Global.EpicOreChance = 0.1
		Global.LegendaryOreChance = 0.05
		
	if get_parent().name == "Cave3":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.2
		Global.RareOreChance = 0.15
		Global.EpicOreChance = 0.1
		Global.LegendaryOreChance = 0.05
		
	if get_parent().name == "Cave4":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.2
		Global.RareOreChance = 0.15
		Global.EpicOreChance = 0.1
		Global.LegendaryOreChance = 0.05
	
	if get_parent().name == "Cave5":
		Global.CommonOreChance = 0.5
		Global.UncommonOreChance = 0.2
		Global.RareOreChance = 0.15
		Global.EpicOreChance = 0.1
		Global.LegendaryOreChance = 0.05
	
	var commonOreCount = 0
	var uncommonOreCount = 0
	var rareOreCount = 0
	var epicOreCount = 0
	var legendaryOreCount = 0

	var commonOre = Global.CommonOreChance*maxOre
	var uncommonOre = Global.UncommonOreChance*maxOre
	var rareOre = Global.RareOreChance*maxOre
	var epicOre = Global.EpicOreChance*maxOre
	var legendaryOre = Global.LegendaryOreChance*maxOre

	print(str(commonOre+uncommonOre+rareOre+epicOre+legendaryOre)+"\n")
	

	for i in range(maxOre):
		
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
