extends Area2D

var interact = true

func _process(_delta):
	pass


func _on_area_entered(_area):
	$"../../Textbox".add_text("First Desk")
	$"../../Textbox".interact = true


func _on_area_exited(_area):
	$"../../Textbox".interact = false

