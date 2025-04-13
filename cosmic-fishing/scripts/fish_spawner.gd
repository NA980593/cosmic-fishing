extends Node3D

func _ready() -> void:
	spawn("res://assets/3d_models/good-fish/Anglerfish.glb")

func spawn(name):
	var scene = load(name)
	var instance = scene.instantiate()
	add_child(instance)
