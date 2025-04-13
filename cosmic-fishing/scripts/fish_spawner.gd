extends Node3D

func spawn(name):
	var scene = load(name)
	var instance = scene.instantiate()
	add_child(instance)
