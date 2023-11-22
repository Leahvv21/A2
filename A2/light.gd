extends Node2D

@export var Length: int
var Negative = false 
var light = true


func _ready():
	Length = Constants.TILE_SIZE * Length
	$RayCast2D.target_position = Vector2.ZERO
	$RayCast2D.force_raycast_update() # Update the `target_position` immediately

func _process(_delta):
	if Input.is_action_just_released("interact"):
		if $RayCast2D.target_position == Vector2.ZERO: 
			$RayCast2D.target_position = Vector2.DOWN * Length
		elif $RayCast2D.target_position == Vector2.DOWN * Length: 
			$RayCast2D.target_position = Vector2.LEFT * Length
			Negative = true
			light = false
		elif $RayCast2D.target_position == Vector2.LEFT * Length: 
			$RayCast2D.target_position = Vector2.UP * Length
			light = false
		elif $RayCast2D.target_position == Vector2.UP * Length: 
			$RayCast2D.target_position = Vector2.RIGHT * Length
			Negative = false
			light = false
		elif $RayCast2D.target_position == Vector2.RIGHT * Length: 
			$RayCast2D.target_position = Vector2.DOWN * Length
			light = false
		$RayCast2D.force_raycast_update() # Update the `target_position` immediately
	light_beam(light)
	light = true 

func light_beam(light_bool):
	var tile = $RayCast2D.get_collider()
	if tile:
		var pos = $RayCast2D.get_collision_point()
		if tile.has_method("change") && light_bool:
			if Negative:
				pos = pos + Vector2(-1,-1)
			tile.change(pos)
		if tile.has_method("change_back") && !light_bool:
			tile.change_back()
		if !tile.has_method("change"):
			return
