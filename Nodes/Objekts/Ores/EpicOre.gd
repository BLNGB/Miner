extends StaticBody2D

@onready var InDmgArea = false


func _process(delta):
	$TextureProgressBar/Label.text = str($TextureProgressBar.value)
	if Input.is_action_just_pressed("ui_attack") and $TextureProgressBar.visible == true and InDmgArea == true:
		$TextureProgressBar.value = $TextureProgressBar.value - Global.StrengthLvl
	if $TextureProgressBar.value != 100: 
		$TextureProgressBar.visible = true
	if $TextureProgressBar.value == 0:
		Global.EpicOreCount = Global.EpicOreCount + 1
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

func _on_epic_ore_tree_entered():
	var scene = get_tree().current_scene.name
	match scene:
		"Cave1": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC1.png")
		"Cave2": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC2.png")
		"Cave3": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC3.png")
		"Cave4": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC4.png")
		"Cave5": $EpicOre.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreC5.png")
