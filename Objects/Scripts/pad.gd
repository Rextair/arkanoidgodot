extends CharacterBody2D


const SPEED = 300.0

#preload player_container class
const player_container = preload("res://Objects/Scripts/PadContainer.tres")

func _ready():
	set_meta("pad", true)
	#set
	player_container.player = self
	print(player_container.player)

func _physics_process(delta):
	velocity.y = 0.0
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
