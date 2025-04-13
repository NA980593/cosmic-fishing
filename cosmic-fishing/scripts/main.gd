extends Node3D

var xr_interface: XRInterface

@onready var fisher_rod: XRToolsPickable = $"Fisher Rod"

@onready var testing_values_in_vr: Node3D = $TestingValuesInVR
@onready var bobber_holder: RigidBody3D = $"Fisher Rod/BobberHolder"

func _ready():
	xr_interface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully")

		# Turn off v-sync!
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		# Change our main viewport to output to the HMD
		get_viewport().use_xr = true
	else:
		print("OpenXR not initialized, please check if your headset is connected")


func _physics_process(delta: float) -> void:
	testing_values_in_vr.set_label(str(bobber_holder.linear_velocity))
