extends Node2D

func _ready():
	Global.DmgOverTime = 0


func _process(delta):
	Global.PositionOutside = get_node("Player").position - Vector2(0,-10)
	if delta == delta:
		pass
	
