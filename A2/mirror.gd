extends Node2D
var interact = false
var first = true

func _process(_delta):
	$Sprite2D/RayCast2D.force_raycast_update()
	if $Sprite2D/RayCast2D.is_colliding():
		$Sprite2D/Light.Activate = false
	if interact && Input.is_action_just_pressed("flip"):
		$SFX_flip.play()
		$Sprite2D.flip_v = !$Sprite2D.flip_v
		$Sprite2D/Light.rotation_degrees += 180 
		$Sprite2D/Light.light = false
	elif interact && Input.is_action_just_pressed("interact"):
		$SFX.play()
		rotation_degrees += 90 
		$Sprite2D/Light.light = false 

func _on_area_2d_area_entered(_area):
	interact = true


func _on_area_2d_area_exited(_area):
	interact = false
