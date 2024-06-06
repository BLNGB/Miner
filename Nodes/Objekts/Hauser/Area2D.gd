extends Area2D

var entered = false

func _on_area_entered(body: PhysicsBody2D):
	entered = true


func _on_area_exited(body: PhysicsBody2D):
	entered = false
