extends Node3D

func _ready() -> void:
	spawn("res://assets/3d_models/good-fish/Anglerfish.glb")

func spawn(name):
	var scene = load("res://scenes/fish_pickable.tscn")
	var instance = scene.instantiate()
	instance.global_transform = global_transform
	get_parent().add_child(instance)
	instance.add_child(load("res://scenes/good_fish_scenes/anglerfish.tscn"))
