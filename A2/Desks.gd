extends Area2D

var interact = false 

func _process(_delta):
	if interact && Input.is_action_just_pressed("interact"):
		print("yassss")


func _on_area_entered(_area):
	interact = true


func _on_area_exited(_area):
	interact = false

