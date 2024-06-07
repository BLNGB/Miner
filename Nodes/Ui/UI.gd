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
	Global.StrengthLvl = Global.StrengthLvl + 1
func _on_value_pressed():
	Global.ValueLvl = Global.ValueLvl + 1
func _on_speed_pressed():
	Global.SpeedLvl = Global.SpeedLvl + 1
