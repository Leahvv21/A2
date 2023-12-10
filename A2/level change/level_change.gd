extends Area2D

var texture
var entered = false
@export_file("*.tscn") var next_scene
#@onready var pixellation = $Pixellation

func _on_area_entered(area):
	entered = true

func _process(delta):
	if entered == true:
		#pixellation.pixelate()
		get_tree().change_scene_to_file(next_scene)
		#animatie transitie backwards
		
	

