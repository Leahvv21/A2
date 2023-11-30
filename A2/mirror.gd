extends Node2D
var interact = false

func _process(delta):
	if interact && Input.is_action_just_pressed("interact"):
		$Sprite2D.flip_h = !$Sprite2D.flip_h
		$Sprite2D/Light.rotation_degrees += 180 
		$Sprite2D/Light.light = false

func _on_area_2d_area_entered(area):
	interact = true


func _on_area_2d_area_exited(area):
	interact = false
