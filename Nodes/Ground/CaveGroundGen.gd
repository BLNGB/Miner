extends TileMap

var width = 100
var height = 100

var rand_x
var rand_y

@onready var player= get_parent().get_parent().get_child(1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	generate(player.position)
	
	
func generate(position):
	var tile_pos = local_to_map(position)
	for x in range(width):
		for y in range(height):
			set_cell(0,Vector2i(tile_pos.x-width/2+x,tile_pos.y-height/2+y),1,Vector2(0,0))
