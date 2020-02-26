extends Node

var id_number = 0
var nodes = []
var spreadable_nodes = []
var rng = RandomNumberGenerator.new()

var base_elevation = 0
var float_direction

func _ready():
	rng.randomize()

func init(new_id,new_source):
	id_number = new_id
	nodes.append(new_source)
	spreadable_nodes.append(new_source)
	float_direction = rng.randi_range(1,8)

func spread():
	var new_nodes = []
	for node in spreadable_nodes:
		var spreadable = false
		var neighbours = node.get_neighbours()
		for node in neighbours:
			if node.continent == null:
				spreadable = true
				var flip = rng.randi_range(0,1)
				if flip == 1:
					node.set_continent(id_number)
					node.slide_direction = float_direction
					new_nodes.append(node)
		if !spreadable:
			spreadable_nodes.remove(spreadable_nodes.find(node))
	for node in new_nodes:
		nodes.append(node)
		spreadable_nodes.append(node)
	if spreadable_nodes.size() == 0:
		return false
	else:
		return true

func set_height():
	var edge_continent = false
	var max_width = get_parent().width
	for node in nodes:
		if node.X == 0 or node.X == max_width-1:
			edge_continent = true
	var highlow = rng.randi_range(1,2)
	if highlow == 1 and !edge_continent:
		base_elevation = rng.randi_range(8.5,9)
	else:
		base_elevation = rng.randf_range(5.5,6)
	for node in nodes:
		node.elevation += base_elevation
