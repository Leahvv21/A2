extends TileMap
var array = []

func change(pos):
	pos = to_local(pos)
	var cell = local_to_map(pos)
	array.append(cell)
	var vector_light = Vector2(1,0)
	set_cell(0, cell, 1, vector_light)

func change_back():
	for cell in array: 
		set_cell(0, cell, 1, Vector2(0,0))
	array.clear()
