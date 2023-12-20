extends Node2D
var test = true

func _process(delta):
	$Sprite2D/RayCast2D.force_raycast_update()
	if !$Sprite2D/RayCast2D.is_colliding():
		$Sprite2D/Light.Activate = true
		$Sprite2D/Light3.Activate = true
	else: 
		$Sprite2D/Light.Activate = false
		$Sprite2D/Light3.Activate = false

func _on_ray_cast_2d_collided():
	print("Prisma: Colliding")
	$Sprite2D/Light.Activate = false
	$Sprite2D/Light3.Activate = false
	$Sprite2D/RayCast2D.get_collider().change_back()


func _on_ray_cast_2d_not_colliding():
	print("Prisma: Not colliding")
	$Sprite2D/Light.Activate = true
	$Sprite2D/Light3.Activate = true
