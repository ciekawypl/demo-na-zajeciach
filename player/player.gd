extends CharacterBody2D

var speed = 300

func _physics_process(_delta: float) -> void:
	velocity.x = Input.get_axis("left", "right") * speed
	move_and_slide()
