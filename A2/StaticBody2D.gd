extends StaticBody2D

func activate():
	$"../RayCast2D".force_raycast_update()
	if !$"../RayCast2D".is_colliding():
		$"../Light".Activate = true
