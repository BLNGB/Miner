extends StaticBody2D
@onready var i = randi_range(1,15)

func _process(delta):
		$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i+1)
		if $TextureProgressBar.value != $TextureProgressBar.max_value: 
			$TextureProgressBar.visible = true
		if $TextureProgressBar.value == $TextureProgressBar.min_value:
			Global.EpicOreCount = Global.EpicOreCount + Global.ValueLvl
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

func _on_epic_ore_tree_entered():
	var scene = get_tree().current_scene.name
	match scene:
		"Cave1": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC1.png")
		"Cave2": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC2.png")
		"Cave3": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC3.png")
		"Cave4": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC4.png")
		"Cave5": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC5.png")


func _on_hurt_box_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
