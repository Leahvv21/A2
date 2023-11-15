extends Node2D

@export var length: int

func _process(delta):
	light_beam()

func light_beam():
	var tile = $RayCast2D.get_collider()
	print(tile)
	if tile:
		if tile.has_method("change"):
			var pos = $RayCast2D.get_collision_point()
			tile.change(pos)
		if !tile.has_method("change"):
			return
		tile = $RayCast2D.get_collider()
