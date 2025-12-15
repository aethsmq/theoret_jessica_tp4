extends Node
@onready var label = $Label
@onready var timer = $Timer # Ensure this path is correct for your Timer node

# Use the built-in _ready() function to set up the scene
func _ready() -> void:
	timer.connect("timeout", _on_timer_timeout)
	timer.start()
	print("Timer started in _ready()")


func time_left_to_play():
	var time_left = timer.time_left 
	var minute = floor(time_left / 60.0) 
	var second = int(time_left) % 60
	return [minute, second]
	
func _process(delta):
	label.text = "%02d:%02d" % time_left_to_play()
	
func _on_timer_timeout():
	timer.stop()
	label.text = "RESTARTING..."
	get_tree().reload_current_scene()
