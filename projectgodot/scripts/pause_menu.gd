extends Control


func _on_continuer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/gamemap_1.tscn")
	
func _on_how_to_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pause_menu_2.tscn")

func _on_settings_pressed() -> void:
	pass
