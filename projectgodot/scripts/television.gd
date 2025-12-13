class_name television extends Area2D

@export var message := "Une télé..."


func _ready() -> void:
	$Message.hide()
	


func show_message(_body):
	$Timer.start()
	$Message.show()
	$Message/Fond/Label.text = message
	await $Timer.timeout
	$Message.hide()


func hide_message(_body) -> void:
	$Timer.stop()
	$Message.hide()
