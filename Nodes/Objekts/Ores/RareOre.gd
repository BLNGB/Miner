extends StaticBody2D

@onready var InDmgArea = false


func _process(delta):
	$TextureProgressBar/Label.text = str($TextureProgressBar.value)
	if Input.is_action_just_pressed("ui_attack") and $TextureProgressBar.visible == true and InDmgArea == true:
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
	if $TextureProgressBar.value != 100: 
		$TextureProgressBar.visible = true
	if $TextureProgressBar.value == 0:
		Global.RareOreCount = Global.RareOreCount + 1
		queue_free()
		
func _on_area_2d_mouse_entered():
	$TextureProgressBar.visible = true


func _on_area_2d_mouse_exited():
	$TextureProgressBar.visible = false


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		InDmgArea = true


func _on_area_2d_body_exited(body):
	if body.name == "Player":
		InDmgArea = false


func _on_rare_ore_tree_entered():
	var scene = get_tree().current_scene.name
			
	match scene:
		"Cave1": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC1.png")
		"Cave2": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC2.png")
		"Cave3": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC3.png")
		"Cave4": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC4.png")
		"Cave5": $RareOre.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreC5.png")


func _on_progress_bar_mouse_entered():
	pass # Replace with function body.
