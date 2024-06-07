extends StaticBody2D

@onready var InDmgArea = false


func _process(delta):
	$TextureProgressBar/Label.text = str($TextureProgressBar.value)
	if Input.is_action_just_pressed("ui_attack") and $TextureProgressBar.visible == true and InDmgArea == true:
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
	if $TextureProgressBar.value != 100: 
		$TextureProgressBar.visible = true
	if $TextureProgressBar.value == 0:
		Global.CommonOreCount = Global.CommonOreCount + 1
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


func _on_common_ore_tree_entered():
	var scene = get_tree().current_scene.name
		
	match scene:
		"Cave1": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC1.png")
		"Cave2": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC2.png")
		"Cave3": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC3.png")
		"Cave4": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC4.png")
		"Cave5": $CommonOre.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreC5.png")
