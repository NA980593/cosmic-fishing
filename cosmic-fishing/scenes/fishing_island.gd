extends Node3D

func _on_area_3d_body_entered(body):
	if body.group_is_in("player_body"):
		get_tree().reload_current_scene()
