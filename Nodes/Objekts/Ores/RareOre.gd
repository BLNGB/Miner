extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_tree_entered():
	
		var scene = get_tree().current_scene.name
			
		match scene:
			"Cave1": texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC1.png")
			"Cave2": texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC2.png")
			"Cave3": texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC3.png")
			"Cave4": texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC4.png")
			"Cave5": texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC5.png")
			

			
	