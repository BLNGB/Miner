extends Node

var CommonOreCount = 0
var UncommonOreCount = 0
var RareOreCount = 0
var EpicOreCount = 0
var LegendaryOreCount = 0

var CommonOreChance = 1
var UncommonOreChance = 1
var RareOreChance = 1
var EpicOreChance = 1
var LegendaryOreChance = 1

var StrengthLvl = 1
var ValueLvl = 1
var SpeedLvl = 1
var HealthRegenLvl = 1
var ResistLvl = 1

var PositionOutside = Vector2(500,500)
var DisableAttack = false
var HoveredUpgrade = "N"
var CostST = 1
var CostV = 1
var CostSP = 1
var CostHpR = 1
var CostRes = 1

var CamLimitLeft = 0
var CamLimitRight = 0
var CamLimitTop = 0
var CamLimitBottom = 0

var PlayerHp = 100
var DmgOverTime = 0
