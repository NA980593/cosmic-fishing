extends Node3D

var rand = RandomNumberGenerator.new()
var playerScene = "res://scenes/player.tscn"

func _ready():
	rand.randomize()

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("bobber"):
		var bobtime = rand.randi_range(10, 30)
		$FishTimer.wait_time = bobtime
		$FishTimer.start()

func _on_fish_timer_timeout() -> void:
	playerScene.onTheLine()
