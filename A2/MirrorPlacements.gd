extends TileMap
var interact = false
var mirror = preload("res://mirror.tscn")

func _process(_delta):
	if interact && Input.is_action_just_pressed("interact"):
		if $"../Player".check_mirror():
			$"../Player".add_mirror(-1)
			var mirror_instance = mirror.instantiate()
			mirror_instance.global_position = $"../Player".global_position
			$"..".add_child(mirror_instance)
			
			# Wat doet deze code?
			if $Area2D/CollisionShape2D: 
				$Area2D/CollisionShape2D.queue_free()
			else:
				$Area2D/CollisionShape2D2.queue_free()

func _on_area_2d_area_entered(_area):
	interact = true


func _on_area_2d_area_exited(_area):
	interact = false
