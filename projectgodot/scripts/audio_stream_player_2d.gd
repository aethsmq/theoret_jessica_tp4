extends AudioStreamPlayer2D

func _ready():
	connect("finished", Callable(self, "_on_music_finished"))
	play()

func _on_music_finished():
	play() # restart music when it ends
