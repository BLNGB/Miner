extends TileMap

var width = 576
var height = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	var tile_pos = local_to_map(position)
	for x in range(0,1252/2):
		for y in range(-1,750/2):
			set_cell(0,Vector2i(x,y),0,Vector2(0,0))
			
