extends Area2D


func _on_area_2D_4_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/gamemap_5.tscn")
	pass # Replace with function body.
