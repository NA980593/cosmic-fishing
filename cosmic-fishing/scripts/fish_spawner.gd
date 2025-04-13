extends Node3D

func spawn(name):
	print(name)
	var scene = load(OS.get_executable_path().get_base_dir().path_join("/scenes/good_fish_scenes/"+name))
	var instance = scene.instantiate()
	add_child(instance)
