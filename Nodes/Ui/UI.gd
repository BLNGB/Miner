extends CanvasLayer

func _process(delta):
	$CommonS/CommonL.text = str(Global.CommonOreCount)
	$UncommonS/UncommonL.text = str(Global.UncommonOreCount)
	$RareS/RareL.text = str(Global.RareOreCount)
	$EpicS/EpicL.text = str(Global.EpicOreCount)
	$LegendaryS/LegendaryL.text = str(Global.LegendaryOreCount)
	
	$Control/Strength/StrengthL.text = "Lvl " + str(Global.StrengthLvl)
	$Control/Value/ValueL.text = "Lvl " + str(Global.ValueLvl)
	$Control/Speed/SpeedL.text = "Lvl " + str(Global.SpeedLvl)



func _on_strength_pressed():
	if Global.RareOreCount >= Global.CostST:
		Global.StrengthLvl = Global.StrengthLvl + 1
		Global.RareOreCount = Global.RareOreCount - Global.CostST
		Global.CostST = roundi((Global.CostST + 1) * 1.1)
		$Control/CostBox/Cost.text = str(Global.CostST)
	else:
		$AnimationPlayer.play("InsufficientFunds")
	if Global.RareOreCount < Global.CostST:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
func _on_value_pressed():
	if Global.LegendaryOreCount >= Global.CostV:
		Global.ValueLvl = Global.ValueLvl + 1
		Global.LegendaryOreCount = Global.LegendaryOreCount - Global.CostV
		Global.CostV = roundi((Global.CostV + 10) * 1.5)
		$Control/CostBox/Cost.text = str(Global.CostV)
	else:
		$AnimationPlayer.play("InsufficientFunds")
	if Global.LegendaryOreCount < Global.CostV:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
func _on_speed_pressed():
	if Global.CommonOreCount >= Global.CostSP:
		Global.SpeedLvl = Global.SpeedLvl + 1
		Global.CommonOreCount = Global.CommonOreCount - Global.CostSP
		Global.CostSP = roundi((Global.CostSP + 1) * 1.2)
		$Control/CostBox/Cost.text = str(Global.CostSP)
	else:
		$AnimationPlayer.play("InsufficientFunds")
	if Global.CommonOreCount < Global.CostSP:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))

func _on_strength_mouse_entered():
	if Global.RareOreCount < Global.CostST:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "ST"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/RareOrs/RareOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostST)
	
func _on_strength_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"
	
func _on_value_mouse_entered():
	if Global.LegendaryOreCount < Global.CostV:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "V"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/LegendaryOrs/LegendaryOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostV)
	
func _on_value_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"
	
func _on_speed_mouse_entered():
	if Global.CommonOreCount < Global.CostSP:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "SP"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/CommonOrs/CommonOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostSP)
	
func _on_speed_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"
