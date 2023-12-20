extends Area2D

@export_multiline var text = "add text here"

var interact = true

func _process(_delta):
	pass


func _on_area_entered(_area):
	$"../../Textbox".add_text(text)
	$"../../Textbox".interact = true
	

func _on_area_exited(_area):
	$"../../Textbox".interact = false

