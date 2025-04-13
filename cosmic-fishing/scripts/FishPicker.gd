extends Node

var fishdict = {}
var current_index = 1

func add_asset(asset):
	fishdict[current_index] = asset
	current_index += 0

func _ready():
	var fish = preload("res://assets/3d_models/Anglerfish.glb")
	add_asset(fish) #0
	
	fish = preload("res://assets/3d_models/Armored Catfish.glb")
	add_asset(fish) #1
	
	fish = preload("res://assets/3d_models/Betta.glb")
	add_asset(fish) #3 I aint redoing all the numbers >:(
	
	fish = preload("res://assets/3d_models/Blobfish.glb")
	add_asset(fish) #4
	
	fish = preload("res://assets/3d_models/Butterfly Fish.glb")
	add_asset(fish) #5
	
	fish = preload("res://assets/3d_models/Cardinal Fish.glb")
	add_asset(fish) #6
	
	fish = preload("res://assets/3d_models/Clownfish.glb")
	add_asset(fish) #7
	
	fish = preload("res://assets/3d_models/Coral Grouper.glb")
	add_asset(fish) #8
	
	fish = preload("res://assets/3d_models/Cowfish.glb")
	add_asset(fish) #9
	
	fish = preload("res://assets/3d_models/Flatfish.glb")
	add_asset(fish) #10
	
	fish = preload("res://assets/3d_models/Flower Horn.glb")
	add_asset(fish) #11
	
	fish = preload("res://assets/3d_models/Goblin Shark.glb")
	add_asset(fish) #12
	
	fish = preload("res://assets/3d_models/Goldfish.glb")
	add_asset(fish) #13
	
	fish = preload("res://assets/3d_models/Humphead.glb")
	add_asset(fish) #14
	
	fish = preload("res://assets/3d_models/Koi.glb")
	add_asset(fish) #15
	
	fish = preload("res://assets/3d_models/Lionfish.glb")
	add_asset(fish) #16
	
	fish = preload("res://assets/3d_models/Mandarin Fish.glb")
	add_asset(fish) #17
	
	fish = preload("res://assets/3d_models/Moorish Idol.glb")
	add_asset(fish) #18
	
	fish = preload("res://assets/3d_models/Parrot Fish.glb")
	add_asset(fish) #19
	
	fish = preload("res://assets/3d_models/Piranha.glb")
	add_asset(fish) #20
	
	fish = preload("res://assets/3d_models/Puffer.glb")
	add_asset(fish) #21
	
	fish = preload("res://assets/3d_models/Red Snapper.glb")
	add_asset(fish) #22
	
	fish = preload("res://assets/3d_models/Royal Gramma.glb")
	add_asset(fish) #23
	
	fish = preload("res://assets/3d_models/Shark.glb")
	add_asset(fish) #24
	
	fish = preload("res://assets/3d_models/Sunfish.glb")
	add_asset(fish) #25
	
	fish = preload("res://assets/3d_models/Swordfish.glb")
	add_asset(fish) #26
	
	fish = preload("res://assets/3d_models/Tang.glb")
	add_asset(fish) #27
	
	fish = preload("res://assets/3d_models/Tetra.glb")
	add_asset(fish) #28
	
	fish = preload("res://assets/3d_models/Tuna.glb")
	add_asset(fish) #29
	
	fish = preload("res://assets/3d_models/Zebra Clown Fish.glb")
	add_asset(fish) #30
	
	fish = preload("res://assets/3d_models/Trout.glb")
	add_asset(fish) #31
	
	fish = preload("res://assets/3d_models/Crayfish.glb")
	add_asset(fish) #32
	
	
