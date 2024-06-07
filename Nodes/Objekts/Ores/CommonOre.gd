extends StaticBody2D

@onready var InDmgArea = false


func _process(delta):
	if Input.is_action_just_pressed("ui_attack") and $ProgressBar.visible == true and InDmgArea == true:
		$ProgressBar.value = $ProgressBar.value - Global.StrengthLvl
	if $ProgressBar.value != 100: 
		$ProgressBar.visible = true
	if $ProgressBar.value == 0:
		Global.CommonOreCount = Global.CommonOreCount + 1
		queue_free()
	
func _on_area_2d_mouse_entered():
	$ProgressBar.visible = true


func _on_area_2d_mouse_exited():
	$ProgressBar.visible = false


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
