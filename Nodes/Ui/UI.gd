extends CanvasLayer

func _process(delta):
	$CommonL.text = str(Global.CommonOreCount)
	$UncommonL.text = str(Global.UncommonOreCount)
	$RareL.text = str(Global.RareOreCount)
	$EpicL.text = str(Global.EpicOreCount)
	$LegendaryL.text = str(Global.LegendaryOreCount)
