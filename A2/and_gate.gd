extends Node2D

func _process(delta):
	if !$Sprite2D/RayCast2D.is_colliding() && !$Sprite2D/RayCast2D2.is_colliding() && !$Sprite2D/RayCast2D3.is_colliding():
		$Sprite2D/Light.Activate = true 
