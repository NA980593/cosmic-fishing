extends Node3D


func spawn(name):
	var scene = load("res://scenes/fish_pickable/"+name)
	var instance = scene.instantiate()
	instance.global_transform = global_transform
	add_child(instance)
