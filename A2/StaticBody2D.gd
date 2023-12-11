extends StaticBody2D

func activate():
	if !$"../RayCast2D".is_colliding():
		$"../Light".Activate = true
