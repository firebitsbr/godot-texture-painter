extends Node

onready var state_machine = $".."

onready var cam = $"../../spatial/camroot/cam"

func on_init():
	
	var direction
	if Input.is_mouse_button_pressed(BUTTON_WHEEL_UP):
		direction = -1.0
	else:
		direction = 1.0
	
	var factor = 0.3
	
	cam.translate(Vector3(0, 0, 1) * factor * direction)
	
	state_machine.switch_state("Paint")

func on_finalize():
	pass

func update(delta):
	pass

func handle_input(event):
	pass