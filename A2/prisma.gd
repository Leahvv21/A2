extends Node2D

func _process(_delta):
	if $Sprite2D/RayCast2D.is_colliding():
		$Sprite2D/Light.Activate = false
		$Sprite2D/Light3.Activate = false
	else:
		$Sprite2D/Light.Activate = true
		$Sprite2D/Light3.Activate = true
