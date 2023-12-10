extends Sprite2D

@onready var animationPlayer = $AnimationPlayer
@export var animation = 'pixelate'

func pixelate():
	var image = get_viewport().get_texture().get_image()
	var screenshot = ImageTexture.create_from_image(image)
	texture = screenshot
	animationPlayer.play("pixelate")	
