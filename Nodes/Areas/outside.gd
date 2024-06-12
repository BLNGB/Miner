extends Node2D

func _ready():
	Global.currentCave = 0
	Global.DmgOverTime = 0


func _process(delta):
	Global.PositionOutside = get_node("Player").position - Vector2(0,-10)
	if delta == delta:
		pass

func _on_child_entered_tree(node):
	
	Global.currentCave = 0
	pass # Replace with function body.
