extends Node2D

var constraint_length = 100

func _process(delta: float) -> void:
	
	#if Input.is_action_pressed("ui_cancel"):
	$Node_B.position = get_global_mouse_position()
	if Input.is_action_pressed("ui_accept"):
		position_node_b()

func position_node_b():
	var relative_position = $Node_B.position - $Node_A.position 
	var direction = relative_position.normalized()
	$Node_B.position = $Node_A.position + (direction * constraint_length)
	
	
	
