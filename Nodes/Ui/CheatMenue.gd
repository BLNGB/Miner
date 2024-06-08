extends CanvasLayer

#Str
func _on_str_add_100_pressed():
	Global.StrengthLvl += 100
func _on_str_add_10_pressed():
	Global.StrengthLvl += 10
func _on_str_add_1_pressed():
	Global.StrengthLvl += 1
#val
func _on_val_add_100_pressed():
	Global.ValueLvl += 100
func _on_val_add_10_pressed():
	Global.ValueLvl += 10
func _on_val_add_1_pressed():
	Global.ValueLvl += 1
#spe
func _on_spe_add_100_pressed():
	Global.SpeedLvl += 100
func _on_spe_add_10_pressed():
	Global.SpeedLvl += 10
func _on_spe_add_1_pressed():
	Global.SpeedLvl += 1
#ComOre
func _on_com_add_100_pressed():
	Global.CommonOreCount += 100
func _on_com_add_10_pressed():
	Global.CommonOreCount += 10
func _on_com_add_1_pressed():
	Global.CommonOreCount += 1
#UncOre
func _on_unc_add_100_pressed():
	Global.UncommonOreCount += 100
func _on_unc_add_10_pressed():
	Global.UncommonOreCount += 10
func _on_unc_add_1_pressed():
	Global.UncommonOreCount += 1
#RarOre
func _on_rar_add_100_pressed():
	Global.RareOreCount += 100
func _on_rar_add_10_pressed():
	Global.RareOreCount += 10
func _on_rar_add_1_pressed():
	Global.RareOreCount += 1
#EpiOre
func _on_epi_add_100_pressed():
	Global.EpicOreCount += 100
func _on_epi_add_10_pressed():
	Global.EpicOreCount += 10
func _on_epi_add_1_pressed():
	Global.EpicOreCount += 1
#LegOre
func _on_leg_add_100_pressed():
	Global.LegendaryOreCount += 100
func _on_leg_add_10_pressed():
	Global.LegendaryOreCount += 10
func _on_leg_add_1_pressed():
	Global.LegendaryOreCount += 1


func _on_texture_button_pressed():
	$Control/Control2.visible = true
	$Control/Auklapp.visible = false
	$Control/Einklapp.visible = true

func _on_einklapp_pressed():
	$Control/Control2.visible = false
	$Control/Auklapp.visible = true
	$Control/Einklapp.visible = false
