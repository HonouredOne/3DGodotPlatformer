extends Area3D

@export_file("*.tscn") var next_scene

func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.store_score()
		get_tree().change_scene_to_file(next_scene)
