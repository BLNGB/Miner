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
		"Cave1": $TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C1BarTop.png")
		"Cave1": $TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C1BarBottom.png")
		"Cave1": $TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C1Bar.png")
		"Cave2": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC2.png")
		"Cave2": $TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C2BarTop.png")
		"Cave2": $TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C2BarBottom.png")
		"Cave2": $TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C2Bar.png")
		"Cave3": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC3.png")
		"Cave3": $TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C3BarTop.png")
		"Cave3": $TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C3BarBottom.png")
		"Cave3": $TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C3Bar.png")
		"Cave4": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC4.png")
		"Cave4": $TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C4BarTop.png")
		"Cave4": $TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C4BarBottom.png")
		"Cave4": $TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C4Bar.png")
		"Cave5": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC5.png")
		"Cave5": $TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C5BarTop.png")
		"Cave5": $TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C5BarBottom.png")
		"Cave5": $TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C5Bar.png")

func _on_hurt_box_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
