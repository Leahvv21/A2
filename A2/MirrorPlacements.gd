extends TileMap
var interact = false
var mirror = preload("res://mirror.tscn")

func _process(delta):
	if interact && Input.is_action_just_pressed("interact"):
		if $"../Player".check_mirror():
			$"../Player".add_mirror(-1)
			var mirror_instance = mirror.instantiate()
			mirror_instance.global_position = $"../Player".global_position
			$"..".add_child(mirror_instance)
			if $Area2D/CollisionShape2D: 
				$Area2D/CollisionShape2D.queue_free()
			else:
				$Area2D/CollisionShape2D2.queue_free()

func _on_area_2d_area_entered(area):
	interact = true


func _on_area_2d_area_exited(area):
	interact = false
