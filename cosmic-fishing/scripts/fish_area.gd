extends Area3D

var rand = RandomNumberGenerator.new()

func _ready():
	rand.randomize()

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("bobber"):
		var bobtime = rand.randi_range(10, 30)
		$FishTimer.wait_time = bobtime
		$FishTimer.start()


func _on_fish_timer_timeout() -> void:
	#Give Haptic feedback to controller.
	#Call some function on player that awaits a collision
	pass
