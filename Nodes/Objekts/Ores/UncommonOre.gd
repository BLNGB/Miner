extends StaticBody2D
@onready var i = randi_range(1,15)

func _process(delta):
	if delta == delta:
		pass
	$TextureProgressBar/Label.text = str($TextureProgressBar.value) + "x " + str(i+1)
	if $TextureProgressBar.value != $TextureProgressBar.max_value: 
		$TextureProgressBar.visible = true
	if $TextureProgressBar.value == $TextureProgressBar.min_value:
		Global.UncommonOreCount = Global.UncommonOreCount + Global.ValueLvl
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
	
func _on_uncommon_ore_tree_entered():

	$UncommonOre.texture = load("res://Sprites/Objekts/Ores/UncommonOrs/UncommonOreC"+Global.currentCave+".png")



func _on_hurtbox_area_entered(area):
	if area.name == "Pickaxe":
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
