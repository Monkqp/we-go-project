extends TileMap
var floor_layer = 0
var wall_layer = 1
var x_interval = 8

func generate_tiles():
	for i in range(10):
			set_cell(0,Vector2(i*x_interval,0),1,Vector2i(1,1),0)
			
func wave_function_tile_generate():
	var width = 30
	var height = 10
	var cell = Vector2i(randi()%width,randi()%height)
	var tile = Vector2i(1,1)
	var neighbors
	set_cell(0,cell,1,tile,0)
	for i in range(30):
		neighbors = get_surrounding_cells(cell)
		cell = neighbors[randi()%4]
		set_cell(0,cell,1,tile,0)
	
	
func _ready():
	generate_tiles()
	# Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
