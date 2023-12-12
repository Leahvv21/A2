extends TileMap

var interact = false 

func _process(_delta):
	if interact && Input.is_action_just_pressed("interact"):
		$"../Player".add_mirror(1)
		

func _on_area_2d_area_entered(_area):
	interact = true


func _on_area_2d_area_exited(_area):
	interact = false 
