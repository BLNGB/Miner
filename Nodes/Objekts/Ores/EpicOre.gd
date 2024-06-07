extends StaticBody2D

@onready var InDmgArea = false


func _process(delta):
	if Input.is_action_just_pressed("ui_attack") and $ProgressBar.visible == true and InDmgArea == true:
		$ProgressBar.value = $ProgressBar.value - Global.StrengthLvl
	if $ProgressBar.value != 100: 
		$ProgressBar.visible = true
	if $ProgressBar.value == 0:
		Global.EpicOreCount = Global.EpicOreCount + 1
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

func _on_epic_ore_tree_entered():
	var scene = get_tree().current_scene.name
	match scene:
		"Cave1": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC1.png")
		"Cave2": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC2.png")
		"Cave3": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC3.png")
		"Cave4": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC4.png")
		"Cave5": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC5.png")
