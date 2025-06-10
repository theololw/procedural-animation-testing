extends Node2D


func _on_main_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _on_three_nodes_pressed() -> void:
	get_tree().change_scene_to_file("res://three_nodes.tscn")


func _on_leg_pressed() -> void:
	get_tree().change_scene_to_file("res://leg.tscn")


func _on_lizard_pressed() -> void:
	get_tree().change_scene_to_file("res://lizard.tscn")



func _on_testing_sum_physics_pressed() -> void:
	get_tree().change_scene_to_file("res://testing_sum_physics.tscn")


func _on_spider_pressed() -> void:
	get_tree().change_scene_to_file("res://spider.tscn")
