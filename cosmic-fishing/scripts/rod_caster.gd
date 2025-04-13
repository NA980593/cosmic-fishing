extends Node3D

@onready var ray_cast: RayCast3D = $RayCast3D

@onready var ray_cast_mesh: MeshInstance3D = $RayCastMesh

@onready var timer: Timer = $Timer

signal catch_fish

func _ready() -> void:
	ray_cast_mesh.visible = false

func _process(delta: float) -> void:
	if ray_cast.is_colliding() && ray_cast_mesh.visible == false:
		ray_cast_mesh.visible = true
		timer.start()
	if !ray_cast.is_colliding() && ray_cast_mesh.visible == true:
		ray_cast_mesh.visible = false
		timer.stop()


func _on_timer_timeout() -> void:
	catch_fish.emit()
	#delete and respawn fishing rod.


func _on_button_pressed() -> void:
	catch_fish.emit()
