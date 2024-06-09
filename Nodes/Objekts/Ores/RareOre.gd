extends StaticBody2D
@onready var i = randi_range(1,15)

func _process(delta):
		$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i+1)
		if $TextureProgressBar.value != $TextureProgressBar.max_value: 
			$TextureProgressBar.visible = true
		if $TextureProgressBar.value == $TextureProgressBar.min_value:
			Global.RareOreCount = Global.RareOreCount + Global.ValueLvl
			if i != 0:
				i = i-1
				$TextureProgressBar.value = $TextureProgressBar.max_value
				$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i)
			else:
				queue_free()
		
func _on_area_2d_mouse_entered():
	$TextureProgressBar.visible = true


func _on_area_2d_mouse_exited():
	$TextureProgressBar.visible = false

func _on_rare_ore_tree_entered():
	var scene = get_tree().current_scene.name
	match scene:
		"Cave1": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC1.png")
		"Cave2": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC2.png")
		"Cave3": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC3.png")
		"Cave4": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC4.png")
		"Cave5": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC5.png")

func _on_hurt_box_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
