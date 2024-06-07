extends CharacterBody2D
const SPEED = 150.0
@onready var anim = $AnimationPlayer
var directionX
var directionY

func _ready():
	position = Global.PositionOutside
	var tilemap_rect = get_parent().get_node("Ground").get_node("TileMap").get_used_rect()
	var tilemap_cell_size = get_parent().get_node("Ground").get_node("TileMap").tile_set.tile_size 
	$Camera2D.limit_left = (tilemap_rect.position.x * tilemap_cell_size.x) -100
	$Camera2D.limit_right = (tilemap_rect.end.x * tilemap_cell_size.x) +100
	$Camera2D.limit_top = (tilemap_rect.position.y * tilemap_cell_size.y) -100
	$Camera2D.limit_bottom = (tilemap_rect.end.y * tilemap_cell_size.y) +100
	anim.play("Idle")
	
func _physics_process(delta):
	directionX = Input.get_axis("ui_left", "ui_right")
	velocity.x = directionX * SPEED
	if directionX == -1:
		get_node("AnimatedSprite2D").flip_h = true
		anim.play("Walk")
	elif directionX == 1:
		get_node("AnimatedSprite2D").flip_h = false
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
