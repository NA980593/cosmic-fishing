extends Node3D

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("beer"):
		body.queue_free()
		$SubViewport/Label.text = "I love beer!!!"
		$Sprite3D.show()
		$DingusTimer.wait_time = 5
		$DingusTimer.start()
		
	elif body.is_in_group("fish"):
		body.queue_free()
		$SubViewport/Label.text = "This is trout of this world!"
		$Sprite3D.show()
		$DingusTimer.wait_time = 5
		$DingusTimer.start()
		
	else:
		$SubViewport/Label.text = "I can't eat that!"
		$Sprite3D.show()
		$DingusTimer.wait_time = 3
		$DingusTimer.start()

func _on_dingus_timer_timeout() -> void:
	$Sprite3D.hide()
