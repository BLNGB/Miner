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
		"Cave1": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC1.png")
		"Cave2": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC2.png")
		"Cave3": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC3.png")
		"Cave4": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC4.png")
		"Cave5": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC5.png")
		
func _on_hurt_box_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl


func _on_hurt_box_mouse_entered():
	$TextureProgressBar.visible = true


func _on_hurt_box_mouse_exited():
	$TextureProgressBar.visible = false
