extends CharacterBody2D

class_name player

@export var speed: float = 100.0
 
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta):
	var input_vector = Vector2.ZERO

	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

	input_vector = input_vector.normalized()
	velocity = input_vector * speed

	# Move the character
	move_and_slide()

	# Handle animations
	if input_vector == Vector2.ZERO:
		# idle animation
		anim.play("idle")
	else:
		# choose the direction anim==++ation
		if abs(input_vector.x) > abs(input_vector.y):
			if input_vector.x > 0:
				anim.play("right")
			else:
				anim.play("left")
		else:
			if input_vector.y > 0:
				anim.play("front")
			else:
				anim.play("back")

 
