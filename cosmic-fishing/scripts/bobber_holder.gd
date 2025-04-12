extends Node3D

var bobber = preload("res://scenes/bobber.tscn")

func launch(force):
	var b = bobber.instance()
	get_tree().get_root().add_child(b)
	b.throw_bobber(force)
