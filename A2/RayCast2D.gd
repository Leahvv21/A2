extends RayCast2D

var last_collider: Object
signal collided 
signal not_colliding 

func _process(delta):
	var current_collider = get_collider()
	if !is_colliding():
		#if current_collider != last_collider:
			#not_colliding.emit()
		last_collider = null
		return
	if current_collider != last_collider:
		last_collider = current_collider
		#collided.emit()
