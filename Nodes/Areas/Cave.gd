extends Node2D

var minX = -1
var maxX = 1252/15.5

var minY = -1
var maxY =  750/15.5

var caveName = "Cave"+str(Global.currentCave)
@onready var tileMap = get_node("Ground/TileMap")

func _ready():

	groundGen()

func groundGen():
	var newTileMap = TileMap.new()
	tileMapGen(newTileMap)
	print(str(newTileMap) + "kekw")
	
	match caveName:
			"Cave1":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						newTileMap.set_cell(0,Vector2i(x,y),0,Vector2(0,0))
		
			"Cave2":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						newTileMap.set_cell(0,Vector2i(x,y),0,Vector2(1,0))
			
			"Cave3":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						newTileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(2,0))
			"Cave4":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						newTileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(3,0))
			"Cave5":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						newTileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(0,1))
						
func tileMapGen(newTileMap):
	newTileMap.tile_set = load("res://Sprites/Ground/InCaves/Ground.tres")
	newTileMap.tile_set.tile_size = Vector2(16,16)
	newTileMap.rendering_quadrant_size = 16
