extends Node2D

func _process(delta):
	Global.PositionOutside = get_node("Player").position - Vector2(0,-10)
	
