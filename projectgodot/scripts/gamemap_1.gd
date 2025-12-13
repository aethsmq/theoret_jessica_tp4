extends Node2D
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://scenes/gamemap_2.tscn")



func _on_key_body_entered(body: Node2D) -> void:
	if body is player:
		$Sprite2D/porte/porteouvrable.disabled = false

		
