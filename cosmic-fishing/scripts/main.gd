extends Node3D

var xr_interface: XRInterface

@onready var testing_values_in_vr: Node3D = $TestingValuesInVR
@onready var fishing_area = $FishingMap/FishArea

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		testing_values_in_vr.set_label("OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
	else:
		testing_values_in_vr.set_label("OpenXR not initialized, please check if your headset is connected")


func _on_qrng_request_print_viewport(num) -> void:
	testing_values_in_vr.set_label(str(num))


func _on_rod_caster_kill_rod() -> void:
	$Better_Rod_Pick.queue_free()
	$Timer.start()


func _on_timer_timeout() -> void:
	print(name)
	var scene = load("res://scenes/better_rod_pick.tscn")
	var instance = scene.instantiate()
	var scene2 = load("res://scenes/rod_caster.tscn")
	var instance2 = scene.instantiate()
	instance.add_child(instance2)
	$rod_spawner.add_child(instance)
