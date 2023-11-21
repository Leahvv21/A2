extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# position = position.snapped(Vector2.ONE * Constants.TILE_SIZE)
	# position -= Vector2.ONE * (Constants.TILE_SIZE / 2)
	pass
 
func _process(_delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	$GridMovement.move(input_direction)
