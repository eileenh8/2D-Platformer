extends Area2D




func _on_body_entered(body):
	var current_scene = get_tree().current_scene.scene_file_path
	print(body.name)
	if body.name == "Player":
		if current_scene == "res://Levels/Level1.tscn":
			get_tree().change_scene_to_file("res://Levels/level2.tscn")
		elif current_scene == "res://Levels/Level2.tscn":
			get_tree().change_scene_to_file("res://Levels/level1.tscn")
