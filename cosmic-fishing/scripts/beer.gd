extends Node3D

@onready var beer_particles: CPUParticles3D = $CPUParticles3D

func _physics_process(delta: float) -> void:
	if abs(rad_to_deg(rotation.x)) > 35 or abs(rad_to_deg(rotation.y)) > 35 or abs(rad_to_deg(rotation.z)) > 35:
		beer_particles.emitting = true
	else:
		beer_particles.emitting = false

func _on_area_3d_body_entered(body: Node3D) -> void:
	get_parent().theBeerMaker()
