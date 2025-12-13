extends Area2D
func enable_collision():
	$CollisionShape2D.disabled = false
	
func _on_body_entered(body: Node2D) -> void:
	if body is player:
		get_tree().change_scene_to_file("res://scenes/gamemap_2.tscn")
	
