class_name Player extends CharacterBody2D

signal coinPickedUp

var coins = 0
var speed = 300
var jump = 600
var gravity = 30

func _physics_process(_delta: float) -> void:
	print(coins)
	velocity.x = Input.get_axis("left", "right") * speed
	
	if Input.is_action_pressed("up") and is_on_floor():
		velocity.y -= jump
	if not is_on_floor():
		velocity.y += gravity
	
	move_and_slide()

func handle_collision(area : Area2D):
	if area is Coin:
		coins += 1
		coinPickedUp.emit()
