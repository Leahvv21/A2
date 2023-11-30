extends Node2D

@export var Length: int
var Negative = false #Nu niet meer nodig 
@export var light = true #Voor als het licht verandert dat dan alles anders donker wordt
@export var Activate = false #of het licht geactiveerd is of niet


func _ready():
	$RayCast2D.enabled = false
	Length = Constants.TILE_SIZE * Length
	$RayCast2D.target_position = Vector2.ZERO
	#$RayCast2D.force_raycast_update() # Update the `target_position` immediately

func _process(_delta):
	if Activate:
		$RayCast2D.enabled = true
		if $RayCast2D.target_position == Vector2.ZERO: 
			$RayCast2D.target_position = Vector2.DOWN * Length
		if $RayCast2D.target_position == Vector2.DOWN * Length: 
			#$RayCast2D.target_position = Vector2.LEFT * Length
			Negative = false
			#light = false
		if $RayCast2D.target_position == Vector2.LEFT * Length: 
			print("Left")
			Negative = false
			#$RayCast2D.target_position = Vector2.UP * Length
			#light = false
		if $RayCast2D.target_position == Vector2.UP * Length: 
			print("Up")
			#$RayCast2D.target_position = Vector2.RIGHT * Length
			Negative = false
			#light = false
		if $RayCast2D.target_position == Vector2.RIGHT * Length: 
			print("Right")
			#$RayCast2D.target_position = Vector2.DOWN * Length
			#light = false
			Negative = false
		#$RayCast2D.force_raycast_update() # Update the `target_position` immediately
	light_beam(light)

func light_beam(light_bool):
	var tile = $RayCast2D.get_collider()
	if tile:
		var pos = $RayCast2D.get_collision_point()
		if tile.is_class("Area2D") && tile.has_method("activate"):
			tile.activate()
		if tile.has_method("change") && light_bool:
			if $RayCast2D.global_rotation_degrees>0: #Nu zo gedaan dat het niet uitmaakt hoe je het licht neerzet het doet het altijd
				pos = pos + Vector2(-1,-1)
			tile.change(pos)
		if tile.has_method("change_back") && !light_bool:
			tile.change_back()
			light = true 
		if !tile.has_method("change"):
			return


#func _on_area_2d_area_entered(area):
	#print("Press E to turn the Lights")

#func _on_area_2d_area_exited(area):
	#print("Back to the Darkness...")
