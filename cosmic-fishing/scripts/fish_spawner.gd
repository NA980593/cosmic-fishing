extends Node3D

var fish = ["res://scenes/good_fish_scenes/anglerfish.tscn",
"res://scenes/good_fish_scenes/armored_catfish.tscn",
"res://scenes/good_fish_scenes/betta.tscn",
"res://scenes/good_fish_scenes/blobfish.tscn",
"res://scenes/good_fish_scenes/butterfly_fish.tscn",
"res://scenes/good_fish_scenes/cardinal_fish.tscn",
"res://scenes/good_fish_scenes/clownfish.tscn",
"res://scenes/good_fish_scenes/coral_grouper.tscn",
"res://scenes/good_fish_scenes/cowfish.tscn",
"res://scenes/good_fish_scenes/crayfish.tscn",
"res://scenes/good_fish_scenes/flatfish.tscn",
"res://scenes/good_fish_scenes/flower_horn.tscn",
"res://scenes/good_fish_scenes/goblin_shark.tscn",
"res://scenes/good_fish_scenes/goldfish.tscn",
"res://scenes/good_fish_scenes/humphead.tscn",
"res://scenes/good_fish_scenes/koi.tscn",
"res://scenes/good_fish_scenes/lionfish.tscn",
"res://scenes/good_fish_scenes/mandarin_fish.tscn",
"res://scenes/good_fish_scenes/moorish_idol.tscn",
"res://scenes/good_fish_scenes/parrot_fish.tscn",
"res://scenes/good_fish_scenes/piranha.tscn",
"res://scenes/good_fish_scenes/Puffer.tscn",
"res://scenes/good_fish_scenes/Red Snapper.tscn",
"res://scenes/good_fish_scenes/Royal Gramma.tscn",
"res://scenes/good_fish_scenes/Shark.tscn",
"res://scenes/good_fish_scenes/Sunfish.tscn",
"res://scenes/good_fish_scenes/Swordfish.tscn",
"res://scenes/good_fish_scenes/Tang.tscn",
"res://scenes/good_fish_scenes/Tetra.tscn",
"res://scenes/good_fish_scenes/Trout.tscn",
"res://scenes/good_fish_scenes/Tuna.tscn",
"res://scenes/good_fish_scenes/Zebra Clown Fish.tscn"]


func spawn(num):
	print(name)
	var scene = load(fish[num])
	var instance = scene.instantiate()
	add_child(instance)
