extends StaticBody2D

var rand_x
var rand_y

func _ready():
	randomize()


	if get_parent().name == "Cave1":

		for i in range(50):
			var CommonOre = preload("res://Nodes/Objekts/Ores/CommonOre.tscn").instantiate()

			rand_x = randf_range(0,1152)
			rand_y = randf_range(0,650)
			CommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(CommonOre)

		for i in range(25):
			var UncommonOre = preload("res://Nodes/Objekts/Ores/UncommonOre.tscn").instantiate()

			rand_x = randf_range(0,1152)
			rand_y = randf_range(0,650)
			UncommonOre.global_position = Vector2(rand_x, rand_y)
			add_child(UncommonOre)

		for i in range(12):
			var RareOre = preload("res://Nodes/Objekts/Ores/RareOre.tscn").instantiate()

			rand_x = randf_range(0,1152)
			rand_y = randf_range(0,650)
			RareOre.global_position = Vector2(rand_x, rand_y)
			add_child(RareOre)

		for i in range(6):
			var EpicOre = preload("res://Nodes/Objekts/Ores/EpicOre.tscn").instantiate()

			rand_x = randf_range(0,1152)
			rand_y = randf_range(0,650)
			EpicOre.global_position = Vector2(rand_x, rand_y)
			add_child(EpicOre)

		for i in range(3):
			var LegendaryOre = preload("res://Nodes/Objekts/Ores/LegendaryOre.tscn").instantiate()

			rand_x = randf_range(0,1152)
			rand_y = randf_range(0,650)
			LegendaryOre.global_position = Vector2(rand_x, rand_y)
			add_child(LegendaryOre)
