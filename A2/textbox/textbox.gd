extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/Start
@onready var end_symbol = $TextboxContainer/MarginContainer/HBoxContainer/End
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/Label

@export var text = 'add text here'

enum State {READY,READING,FINISHED}

var Current_State = State.READY

var interact = false

# Called when the node enters the scene tree for the first time.
func _ready():
	print('starting state is READY')
	hide_textbox()

func _process(delta):
	match Current_State:
		State.READY:
			if interact && Input.is_action_just_pressed("interact"):
				show_textbox()
		State.READING:
			pass
		State.FINISHED:
			if Input.is_action_just_pressed("interact") || Input.get_vector("left", "right", "up", "down") != Vector2.ZERO:
				hide_textbox()
			pass
	#if interact && Input.is_action_just_pressed("interact"):
		#show_textbox()

func hide_textbox():
	start_symbol.text = ''
	end_symbol.text = ''
	#label.text = ''
	textbox_container.hide()
	change_state(State.READY)

func show_textbox():
	start_symbol.text = '*'
	textbox_container.show()
	end_symbol.text = 'V'
	change_state(State.FINISHED)

func add_text(next_test):
	label.text = next_test
	#change_state(State.FINISHED)
	#show_textbox()

func change_state(next_state):
	Current_State = next_state
	match Current_State:
		State.READY:
			print('changing state to READY')
		State.READING:
			print('changing state to READING')
		State.FINISHED:
			print('changing state to FINISHED')

