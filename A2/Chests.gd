extends TileMap

var interact = false 

func _process(delta):
	if interact && Input.is_action_just_pressed("interact"):
		$"../Player".add_mirror(1)
		

func _on_area_2d_area_entered(area):
	print("!")
	interact = true


func _on_area_2d_area_exited(area):
	interact = false 
