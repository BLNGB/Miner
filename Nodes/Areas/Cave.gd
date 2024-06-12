extends Node2D

var rand_x
var rand_y

var minXC = -2
var maxXC = 1252

var minYC = -2
var maxYC = 750


var caveName = "Cave"+str(Global.currentCave)
@onready var tileMap = $Ground/TileMap

func _ready():
	groundGen()
	oreGen()
	
	
func randNum():
	rand_x = randf_range(minXC,maxXC)
	rand_y = randf_range(minYC,maxYC)

func groundGen():
	var minX = -1
	var maxX = 1252/15.5

	var minY = -1
	var maxY =  750/15.5

	match caveName:
			"Cave1":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell(0,Vector2i(x,y),0,Vector2(0,0))
		
			"Cave2":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell(0,Vector2i(x,y),0,Vector2(1,0))
			
			"Cave3":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell(0,Vector2i(x,y),0,Vector2(2,0))
			"Cave4":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell(0,Vector2i(x,y),0,Vector2(3,0))
			"Cave5":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell(0,Vector2i(x,y),0,Vector2(0,1))

func oreGen():

	var maxOre= 500
	randomize()
	
	
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
			randNum()
			CaveStairs.global_position = Vector2(rand_x, rand_y)
			add_child(CaveStairs)
			
		if commonOre != commonOreCount:
			commonOreCount+=1
			var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()
	
			randNum()
			CommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(CommonOre)
			
		if uncommonOre != uncommonOreCount:
			uncommonOreCount+=1
			var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

			randNum()
			UncommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(UncommonOre)
			
		if rareOre != rareOreCount:
			rareOreCount+=1
			var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

			randNum()
			RareOre.global_position = Vector2(rand_x, rand_y)
			add_child(RareOre)
		
		if epicOre != epicOreCount:
			epicOreCount+=1
			var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

			randNum()
			EpicOre.global_position = Vector2(rand_x, rand_y)
			add_child(EpicOre)
		
		if legendaryOre != legendaryOreCount:
			legendaryOreCount+=1
			var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

			randNum()
			LegendaryOre.global_position = Vector2(rand_x, rand_y)
			add_child(LegendaryOre)
			
	print("CommonOre "+str(commonOreCount))
	print("UncommonOre "+str(uncommonOreCount))
	print("RareOre "+str(rareOreCount))
	print("EpicOre "+str(epicOreCount))
	print("LegendaryOre "+str(legendaryOreCount))
		
