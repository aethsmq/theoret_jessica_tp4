extends Area2D

@onready var game_manager: Node = %GameManager



func _on_body_entered(_body: Node2D) -> void:
	hide()
	$AudioStreamPlayer2D.play()
	$CollisionShape2D.set_deferred("disabled", true)
	game_manager.add_point()
	
