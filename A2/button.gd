extends Node2D

@export var Pressed = false 

func _process(_delta):
	if !$Sprite2D/RayCast2D.is_colliding():
		Pressed = true
	else:
		Pressed = false 
