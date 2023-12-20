extends Area2D

var interact = false 
var used = false

func _process(_delta):
	if interact && Input.is_action_just_pressed("interact") && !used:
		$AnimatedSprite2D.play("open")
		$"../../Player".add_mirror(1)
		used = true
		


func _on_area_entered(_area):
	interact = true


func _on_area_exited(_area):
	interact = false
