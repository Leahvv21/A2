extends Node2D

@export var Pressed = false 

func _process(_delta):
	$Sprite2D/RayCast2D.force_raycast_update()
	if !$Sprite2D/RayCast2D.is_colliding():
		Pressed = true
		$AnimationPlayer.play("on")
	else:
		Pressed = false 
		$AnimationPlayer.play("RESET")
