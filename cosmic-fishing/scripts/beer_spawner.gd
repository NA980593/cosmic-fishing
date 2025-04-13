extends Node3D

var beer = preload("res://scenes/beer.tscn")

func theBeerMaker():
	destroy()
	beerSavior()

func destroy():
	if self.get_child_count() > 0:
		self.get_child(0).queue_free()

func beerSavior():
	var beer_instance = beer.instance()
	self.add_child(beer_instance)
