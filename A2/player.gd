extends Sprite2D
var mirror_count = 0 

# Called when the node enters the scene tree for the first time.
func _ready():
	# position = position.snapped(Vector2.ONE * Constants.TILE_SIZE)
	# position -= Vector2.ONE * (Constants.TILE_SIZE / 2)
	pass
 
func _process(_delta):
	var input_direction = Input.get_vector("left", "right", "up", "down")
	$GridMovement.move(input_direction)
	$Camera2D/Label.text = "Mirror Count: %s" % mirror_count
	if mirror_count > 0 : 
		$Camera2D/Label.visible = true 

func add_mirror(mirror_amount):
	mirror_count += mirror_amount 
	print(mirror_count)

func check_mirror():
	if mirror_count>0:
		return true
	else:
		return false 
