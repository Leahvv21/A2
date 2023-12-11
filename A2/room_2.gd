extends Node2D

func _process(delta):
	if $Button.Pressed && $Button2.Pressed && $Button3.Pressed: 
		$Level_change.monitoring = true 
