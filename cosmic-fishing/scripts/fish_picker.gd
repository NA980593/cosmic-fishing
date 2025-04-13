extends Node

var fish_arr

@onready var fish_spawner: Node3D = $FishSpawner
@onready var qrng_request: Node = $QrngRequest

func add_asset(asset):
	fish_arr.append(asset)

func _ready():
	var dir = DirAccess.open("res://scenes/fish_pickable/")
	fish_arr = dir.get_files()

func get_random_fish():
	qrng_request.send_request()

func _on_rod_caster_catch_fish() -> void:
	get_random_fish()


func _on_qrng_request_got_number(number) -> void:
	fish_spawner.spawn(fish_arr[number])
