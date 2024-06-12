extends CanvasLayer

@onready var UpgradeType
@onready var Lvl
@onready var Cost
@onready var Ore
@onready var Scale

#Label Handling and Lvl Reset
func _process(delta):
	if delta == delta:
		pass
	$CommonS/CommonL.text = str(Global.CommonOreCount)
	$UncommonS/UncommonL.text = str(Global.UncommonOreCount)
	$RareS/RareL.text = str(Global.RareOreCount)
	$EpicS/EpicL.text = str(Global.EpicOreCount)
	$LegendaryS/LegendaryL.text = str(Global.LegendaryOreCount)
	
	$Control/Strength/StrengthL.text = "Lvl " + str(Global.StrengthLvl)
	$Control/Value/ValueL.text = "Lvl " + str(Global.ValueLvl)
	$Control/Speed/SpeedL.text = "Lvl " + str(Global.SpeedLvl)
	$Control/HealthRegen/HealthRegenL.text = "Lvl " + str(Global.HealthRegenLvl)
	$Control/Resist/ResistL.text = "Lvl " + str(Global.ResistLvl)
	
	$PlayerHP2.value = Global.PlayerHp
	$PlayerHP2/PlayerHpL.text = str(Global.PlayerHp)
	if Global.PlayerHp == 0:
		Global.StrengthLvl = 1
		Global.HealthRegenLvl = 0
		Global.SpeedLvl = 1
		Global.ResistLvl = 0
		Global.ValueLvl = 1
		get_tree().change_scene_to_file("res://Nodes/Areas/outside.tscn")
	if $PlayerHP2.value <= 50:
		$PlayerHP2/PlayerHpL.set("theme_override_colors/font_color", Color(1.0,1.0,1.0,1.0))
	else:
		$PlayerHP2/PlayerHpL.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))

#Butten Pressed Handling
func _on_speed_pressed():
	UpgradeType = "Speed"
	_Upgrade()
func _on_health_regen_pressed():
	UpgradeType = "HealthRegen"
	_Upgrade()
func _on_strength_pressed():
	UpgradeType = "Strength"
	_Upgrade()
func _on_resist_pressed():
	UpgradeType = "Resist"
	_Upgrade()
func _on_value_pressed():
	UpgradeType = "Value"
	_Upgrade()

#Cost Window Handling
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
func _on_health_regen_mouse_entered():
	if Global.UncommonOreCount < Global.CostHR:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "SP"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/UncommonOrs/UncommonOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostHR)
func _on_health_regen_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"
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
func _on_resist_mouse_entered():
	if Global.EpicOreCount < Global.CostHR:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "SP"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/EpicOrs/EpicOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostRE)
func _on_resist_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"
func _on_value_mouse_entered():
	if Global.LegendaryOreCount < Global.CostVA:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
	$Control/CostBox.visible = true
	Global.DisableAttack = true
	Global.HoveredUpgrade = "V"
	$Control/CostBox/Ore.texture = load("res://Sprites/Objekts/Ores/LegendaryOrs/LegendaryOreIcon.png")
	$Control/CostBox/Cost.text = str(Global.CostVA)
func _on_value_mouse_exited():
	$Control/CostBox.visible = false
	Global.DisableAttack = false
	Global.HoveredUpgrade = "N"

#HP Bar Sprite Handling
func _on_tree_entered():



	if int(Global.currentCave) > 0:
		$PlayerHP2.texture_over = load("res://Sprites/Ui/HP Bars/C"+str(Global.currentCave)+"BarTop.png")
		$PlayerHP2.texture_under = load("res://Sprites/Ui/HP Bars/C"+str(Global.currentCave)+"BarBottom.png")
		$PlayerHP2.texture_progress = load("res://Sprites/Ui/HP Bars/C"+str(Global.currentCave)+"Bar.png") 
	else :
		$PlayerHP2.texture_over = load("res://Sprites/Ui/HP Bars/OutsideBarTop.png")
		$PlayerHP2.texture_under = load("res://Sprites/Ui/HP Bars/OutsideBarBottom.png")
		$PlayerHP2.texture_progress = load("res://Sprites/Ui/HP Bars/OutsideBar.png") 



#Upgrade Handling
func _Upgrade():
	match UpgradeType:
		"Speed": 
			Lvl = Global.SpeedLvl
			Cost = Global.CostSP
			Scale = Global.CostSPScale
			Ore = Global.CommonOreCount
		"HealthRegen": 
			Lvl = Global.HealthRegenLvl
			Cost = Global.CostHR
			Scale = Global.CostHRScale
			Ore = Global.UncommonOreCount
		"Strength": 
			Lvl = Global.StrengthLvl
			Cost = Global.CostST
			Scale = Global.CostSTScale
			Ore = Global.RareOreCount
		"Resist": 
			Lvl = Global.ResistLvl
			Cost = Global.CostRE
			Scale = Global.CostREScale
			Ore = Global.EpicOreCount
		"Value": 
			Lvl = Global.ValueLvl
			Cost = Global.CostVA
			Scale = Global.CostVAScale
			Ore = Global.LegendaryOreCount
	if Ore >= Cost:
		Lvl += 1
		Ore = Ore - Cost
		Cost = roundi((Cost + 1) * Scale)
		
		match UpgradeType:
			"Speed": 
				Global.SpeedLvl = Lvl
				Global.CostSP = Cost
				Global.CostSPScale = Scale
				Global.CommonOreCount = Ore
			"HealthRegen": 
				Global.HealthRegenLvl = Lvl
				Global.CostHR = Cost
				Global.CostHRScale = Scale
				Global.UncommonOreCount = Ore
			"Strength": 
				Global.StrengthLvl = Lvl
				Global.CostST = Cost
				Global.CostSTScale = Scale
				Global.RareOreCount = Ore
			"Resist": 
				Global.ResistLvl = Lvl
				Global.CostRE = Cost
				Global.CostREScale = Scale
				Global.EpicOreCount = Ore
			"Value": 
				Global.ValueLvl = Lvl
				Global.CostVA = Cost
				Global.CostVAScale = Scale
				Global.LegendaryOreCount = Ore
			


		$Control/CostBox/Cost.text = str(Cost)
	else:
		$AnimationPlayer.play("InsufficientFunds")
	if Ore < Cost:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(1.0,0.0,0.0,1.0))
	else:
		$Control/CostBox/Cost.set("theme_override_colors/font_color", Color(0.0,0.0,0.0,1.0))
