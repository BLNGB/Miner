extends CharacterBody2D

var player
var chase = false
var SPEED = 1
var directionX
var directionY

func _ready():
	get_node("AnimationPlayer").play("Idle")
	player = get_parent().get_node("Player")
	
	
	
func _physics_process(delta):
	if delta == delta:
		pass
	if chase == true:
		directionX = (player.position.x - self.position.x)
		print(directionX)
		print(directionY)
		directionY = (player.position.y - self.position.y)
		if player.position.x != self.position.x or player.position.y != self.position.y:
			get_node("AnimationPlayer").play("Walk")
			velocity.x = directionX * SPEED
			velocity.y = directionY * SPEED
			if directionX <= -1:
				get_node("Anim").flip_h = true
				$AnimationPlayer.play("Walk")
			elif directionX >= 1:
				get_node("Anim").flip_h = false
				$AnimationPlayer.play("Walk")
		if player.position.y < self.position.y:
			get_node("Anim").play("Walk")
			if directionY <= -1:
				$AnimationPlayer.play("Walk")
			elif directionY >= 1:
				$AnimationPlayer.play("Walk")
				
	else:
		if get_node("Anim").animation != "Death":
			get_node("Anim").play("Idle")
			velocity.x = 0
	move_and_slide()

func _on_detect_box_body_entered(body):
	if body.name == "Player":
		chase = true


func _on_detect_box_body_exited(body):
	if body.name == "Player":
		chase = false


func _on_hurtbox_area_entered(area):
	if area.name == "Pickaxe":
		velocity.x = 0
		velocity.y = 0 
		chase = false
		death()

func death():
	get_node("AnimationPlayer").play("Death")
	await get_node("AnimationPlayer").animation_finished
	self.queue_free()


func _on_hitbox_body_entered(body):
	if body.name == "Player":
		var tween = get_tree().create_tween()
		var multi
		if directionX < 0:
			multi = -1
		else:
			multi = 1
		var x = 50 * multi
		tween.tween_property(self, "position", position - Vector2(x,20), 0.1)
		Global.PlayerHp -= 1


func _on_timer_timeout():
	$Attacks.play("Attack 1")
