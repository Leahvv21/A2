extends Node2D
var animation = true

func _process(_delta):
	if $Button.Pressed && $Button2.Pressed && $Button3.Pressed: 
		$Level_change.monitoring = true 
		if animation:
			$Level_change/AnimatedSprite2D.play("open")
			animation = false 
