extends Node2D

func _process(delta):
	$Sprite2D/RayCast2D.force_raycast_update()
	$Sprite2D/RayCast2D2.force_raycast_update()
	$Sprite2D/RayCast2D3.force_raycast_update()
	if !$Sprite2D/RayCast2D.is_colliding() && !$Sprite2D/RayCast2D2.is_colliding() && !$Sprite2D/RayCast2D3.is_colliding():
		$Sprite2D/Light.Activate = true 
	else:
		$Sprite2D/Light.Activate = false
