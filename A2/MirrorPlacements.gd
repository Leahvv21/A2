extends Area2D
var interact = false
var mirror = preload("res://mirror.tscn")

func _process(_delta):
	if interact && Input.is_action_just_pressed("interact"):
		if $"../../Player".check_mirror():
			$"../../Player".add_mirror(-1)
			var mirror_instance = mirror.instantiate()
			mirror_instance.global_position = $CollisionShape2D.global_position
			$"..".add_child(mirror_instance)


func _on_area_entered(_area):
	interact = true


func _on_area_exited(_area):
	interact = false
