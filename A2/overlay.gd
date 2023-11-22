extends TileMap

func change(pos):
	pos = to_local(pos)
	var cell = local_to_map(pos)
	var vector_light = Vector2(1,0)
	set_cell(0, cell, 1, vector_light)
