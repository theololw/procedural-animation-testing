extends Node2D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		$block_centipede/RigidBody2D.linear_velocity = (get_global_mouse_position() - $block_centipede/RigidBody2D.position) * 10
