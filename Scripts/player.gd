extends CharacterBody2D
var input_direction
@onready var root= get_node(".")

const tile_size = 32

func get_input():
	input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
func tile_move():
	if(Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("ui_down")):
		root.position+=tile_size*input_direction;

func _physics_process(delta):
	get_input()
	tile_move()
	
	move_and_slide()
