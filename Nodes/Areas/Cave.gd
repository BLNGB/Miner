extends Node2D

var minX = -1
var maxX = 1252/15.5

var minY = -1
var maxY =  750/15.5

var caveName = "Cave"+str(Global.currentCave)
@onready var tileMap = $Ground/TileMap

func _ready():
	groundGen()
func groundGen():

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
						tileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(2,0))
			"Cave4":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(3,0))
			"Cave5":
				for x in range(minX,maxX):
					for y in range(minY,maxY):
						tileMap.set_cell.set_cell(0,Vector2i(x,y),0,Vector2(0,1))

