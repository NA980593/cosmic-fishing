extends Node3D


func spawn(name):
	var scene = load("res://scenes/fish_pickable.tscn")
	var instance = scene.instantiate()
	instance.global_transform = global_transform
	add_child(instance)
