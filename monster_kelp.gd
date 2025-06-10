extends Node2D

var constraint_length = 30
var forwards = true

func _process(delta: float) -> void:
	
	
	position_node_1()

func position_node_1():
	var positions = []
	var relative_positions = []
	var directions = []
	var final_positions = []
	var nodes = []
	
	for node in get_tree().get_nodes_in_group("segment"):
		positions.append(node.global_position)
		
		nodes.append(node)
	
	# work out all the relative positions
	for i in range(positions.size() - 1):
		relative_positions.append(positions[i+1] - positions[i]) 
		directions.append(relative_positions[i].normalized())
		if forwards == true:
			nodes[i].look_at(positions[i+1])
		else:
			nodes[i].look_at(positions[i+1])
			
	
	
	# one way
	if forwards == true:
	
		for i in range(nodes.size()-1):
			var ns = nodes.size()
			nodes[(ns-1)-i].position = nodes[(ns-2)-i].position + (directions[(ns-2)-i] * constraint_length)
			
		
		#$Node3.position = $Node2.position + (directions[1] * constraint_length)
		#$Node2.position = $Node1.position + (directions[0] * constraint_length)
	
	#the other way
	else:
		
		for i in range(nodes.size()-1):
			var ns = nodes.size()
			nodes[i].position = nodes[i+1].position - (directions[i] * constraint_length)
			
		
		
		#$Node1.position = $Node2.position - (directions[0] * constraint_length)
		#$Node2.position = $Node3.position - (directions[1] * constraint_length)
	

	


func _on_timer_timeout() -> void:
	if forwards == false:
		forwards = true
		$Node1.position = get_global_mouse_position()
	else:
		forwards = false
		$Node10.position = Vector2(512,512)
