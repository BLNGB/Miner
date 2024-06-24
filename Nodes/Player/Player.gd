extends CharacterBody2D
const SPEED = 150.0
@onready var anim = $AnimationPlayer
var directionX
var directionY

@onready var caLimitLeft = Global.CamLimitLeft
@onready var caLimitRight = Global.CamLimitRight
@onready var caLimitTop = Global.CamLimitTop
@onready var caLimitBottom = Global.CamLimitBottom

func _process(delta):
	if delta == delta:
		pass
	var attackSpeed = 1 + (Global.SpeedLvl/10)
	
	if Input.is_action_pressed("ui_attack") and Global.DisableAttack == false: 
		if get_node("AnimatedSprite2D").flip_h == true:
			get_node("Pickaxe/Pickaxe/CollisionPolygon2D").disabled = false
			$Pick.play("MineCC",-1,attackSpeed)
			Global.DisableAttack = true
			
		elif get_node("AnimatedSprite2D").flip_h == false:
			get_node("Pickaxe/Pickaxe/CollisionPolygon2D").disabled = false
			$Pick.play("Mine",-1,attackSpeed)
			Global.DisableAttack = true
			
			
	if $Pick.is_playing() == false:
				get_node("Pickaxe/Pickaxe/CollisionPolygon2D").disabled = true
				$Pick.set_speed_scale(1)
				$Pick.play("Idle")
				Global.DisableAttack = false

		

func _ready():
	Global.DisableAttack = false
	position = Global.PositionOutside
	var tilemap_rect = get_parent().get_node("Ground").get_node("TileMap").get_used_rect()
	var tilemap_cell_size = get_parent().get_node("Ground").get_node("TileMap").tile_set.tile_size
	 
	$Camera2D.limit_left = (tilemap_rect.position.x * tilemap_cell_size.x) +caLimitLeft
	$Camera2D.limit_right = (tilemap_rect.end.x * tilemap_cell_size.x) +caLimitRight
	$Camera2D.limit_top = (tilemap_rect.position.y * tilemap_cell_size.y) +caLimitTop
	$Camera2D.limit_bottom = (tilemap_rect.end.y * tilemap_cell_size.y) +caLimitBottom
	
	get_node("Pickaxe/Pickaxe/CollisionPolygon2D").disabled = true
	$Pickaxe.set_rotation_degrees(-90)
	
	anim.play("Idle")
	$Pick.play("Idle")
	Global.PlayerHp = 100
	
	if get_tree().current_scene.name.contains("Outside"):
		$DmgOverTime.stop()
	elif get_tree().current_scene.name.contains("Cave"):
		$DmgOverTime.start()
	
func _physics_process(delta):
	if delta == delta:
		pass
	directionX = Input.get_axis("ui_left", "ui_right")
	velocity.x = directionX * SPEED
	if directionX == -1:
		get_node("AnimatedSprite2D").flip_h = true
		$Pickaxe.set_rotation_degrees(0)
		anim.play("Walk")
		
	elif directionX == 1:
		get_node("AnimatedSprite2D").flip_h = false
		$Pickaxe.set_rotation_degrees(-90)
		anim.play("Walk")
		
	elif velocity.y == 0:
		anim.play("Idle")
	directionY = Input.get_axis("ui_up", "ui_down")
	velocity.y = directionY * SPEED
	
	if directionY == -1:
		anim.play("Walk")
	elif directionY == 1:
		anim.play("Walk")
	elif velocity.x == 0:
		anim.play("Idle")
	move_and_slide()

func _on_child_entered_tree(_node):
	if get_tree().current_scene.name.contains("Cave"):
		$Light.visible= true

func _on_health_regen_timeout():
	if get_tree().current_scene.name.contains("Outside"):
		pass
	elif Global.PlayerHp < 100:
		Global.PlayerHp += Global.HealthRegenLvl
	$HealthRegen.start()

func _on_dmg_over_time_timeout():
	if (Global.DmgOverTime-Global.ResistLvl) >= 0:
		Global.PlayerHp -= (Global.DmgOverTime-Global.ResistLvl)
	$DmgOverTime.start()
