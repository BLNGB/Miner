extends CharacterBody2D
const SPEED = 150.0
func _ready():
	$AnimationPlayer.play("Idle")
func _physics_process(delta):
	var directionX = Input.get_axis("ui_left", "ui_right")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
