extends RigidBody3D


func throw_bobber(force_amount):
	var force = transform.basis.z * force_amount
	apply_central_impulse(force)
