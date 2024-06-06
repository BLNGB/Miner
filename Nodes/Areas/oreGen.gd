extends StaticBody2D

var rand_x
var rand_y

func _ready():
	randomize()
	
	for i in range(100):
		var CommonOreC1 = preload("res://Nodes/Objekts/Ores/common_ore_c_1.tscn").instantiate()
		rand_x = randf_range(0,1152)
		rand_y = randf_range(0,650)
		CommonOreC1.global_position = Vector2(rand_x, rand_y)
		add_child(CommonOreC1)
