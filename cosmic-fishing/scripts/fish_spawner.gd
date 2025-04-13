extends Node3D

func spawn(name):
	print(name)
	var scene = load("res://scenes/good_fish_scenes/"+name)
	var instance = scene.instantiate()
	add_child(instance)
