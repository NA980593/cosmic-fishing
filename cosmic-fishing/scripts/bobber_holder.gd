extends RigidBody3D

var bobber = preload("res://scenes/bobber.tscn")

var speed_multiplier = 10.0
var bobbing = false

func launch():
	bobbing = true
	var b = bobber.instance()
	get_tree().get_root().add_child(b)
	var bobber_holder_velocity = get_linear_velocity()
	b.linear_velocity = bobber_holder_velocity * speed_multiplier
	b.global_position = global_position
	#b.throw_bobber(force)
