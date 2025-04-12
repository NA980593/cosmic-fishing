extends Node3D

@onready var label: Label = $SubViewport/Control/ColorRect/Label

func set_label(text):
	label.text = text
