extends Node2D

@export var Length: int
var Negative = false 

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
		elif $RayCast2D.target_position == Vector2.LEFT * Length: 
			$RayCast2D.target_position = Vector2.UP * Length
		elif $RayCast2D.target_position == Vector2.UP * Length: 
			$RayCast2D.target_position = Vector2.RIGHT * Length
			Negative = false
		elif $RayCast2D.target_position == Vector2.RIGHT * Length: 
			$RayCast2D.target_position = Vector2.DOWN * Length
		$RayCast2D.force_raycast_update() # Update the `target_position` immediately
	light_beam()

func light_beam():
	var tile = $RayCast2D.get_collider()
	if tile:
		if tile.has_method("change"):
			if Negative:
				var pos = $RayCast2D.get_collision_point() + Vector2(-1,-1)
				tile.change(pos)
			else:
				var pos = $RayCast2D.get_collision_point()
				tile.change(pos)
		if !tile.has_method("change"):
			return