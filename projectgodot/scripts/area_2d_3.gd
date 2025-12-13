extends Area2D

func _on_area_2D_3_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/replay_menu.tscn")
