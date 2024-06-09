extends StaticBody2D

@onready var i = randi_range(1,15)

func _process(delta):
		$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i+1)
		if $TextureProgressBar.value != $TextureProgressBar.max_value: 
			$TextureProgressBar.visible = true
		if $TextureProgressBar.value == $TextureProgressBar.min_value:
			Global.CommonOreCount = Global.CommonOreCount + Global.ValueLvl
			if i != 0:
				i = i-1
				$TextureProgressBar.value = $TextureProgressBar.max_value
				$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i)
			else:
				queue_free()

	
func _on_common_ore_tree_entered():
	var scene = get_tree().current_scene.name
	match scene:
		"Cave1": 
			$CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC1.png")
			$TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C1BarTop.png")
			$TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C1BarBottom.png")
			$TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C1Bar.png")
		
		"Cave2": 
			$CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC2.png")
			$TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C2BarTop.png")
			$TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C2BarBottom.png")
			$TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C2Bar.png")
		
		"Cave3": 
			$CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC3.png")
			$TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C3BarTop.png")
			$TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C3BarBottom.png")
			$TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C3Bar.png")
		
		"Cave4": 
			$CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC4.png")
			$TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C4BarTop.png")
			$TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C4BarBottom.png")
			$TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C4Bar.png")
		
		"Cave5": 
			$CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC5.png")
			$TextureProgressBar.texture_over = load("res://Sprites/Ui/HP Bars/C5BarTop.png")
			$TextureProgressBar.texture_under = load("res://Sprites/Ui/HP Bars/C5BarBottom.png")
			$TextureProgressBar.texture_progress = load("res://Sprites/Ui/HP Bars/C5Bar.png")
		
func _on_hurt_box_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl


func _on_hurt_box_mouse_entered():
	$TextureProgressBar.visible = true


func _on_hurt_box_mouse_exited():
	$TextureProgressBar.visible = false
