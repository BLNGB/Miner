extends TileMap

var minX = -1
var maxX = 1252/2

var minY = -1
var maxY =  750/2

func _ready():
	
	var tile_pos = local_to_map(position)
	for x in range(minX,maxX):
		for y in range(minY,maxY):
			set_cell(0,Vector2i(x,y),0,Vector2(0,0))
			
