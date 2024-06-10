extends TileMap

var minX = -1
var maxX = 1252/15.6

var minY = -1
var maxY =  750/15.6

func _ready():
	var scene = get_tree().current_scene.name
	
	var tile_pos = local_to_map(position)
	
	
	if scene == "Cave1":
		for x in range(minX,maxX):
			for y in range(minY,maxY):
				set_cell(0,Vector2i(x,y),1,Vector2(0,0))
				
	if scene == "Cave2":
		for x in range(minX,maxX):
			for y in range(minY,maxY):
				set_cell(0,Vector2i(x,y),1,Vector2(1,0))
				
	if scene == "Cave3":
		for x in range(minX,maxX):
			for y in range(minY,maxY):
				set_cell(0,Vector2i(x,y),1,Vector2(2,0))
				
	if scene == "Cave4":
		for x in range(minX,maxX):
			for y in range(minY,maxY):
				set_cell(0,Vector2i(x,y),1,Vector2(3,0))
				
	if scene == "Cave5":
		for x in range(minX,maxX):
			for y in range(minY,maxY):
				set_cell(0,Vector2i(x,y),1,Vector2(0,1))
			
