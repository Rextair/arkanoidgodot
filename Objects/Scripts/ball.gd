extends CharacterBody2D

var speed = 10000
var direction = Vector2(0.5, 1)
@onready var raycast = $RayCast2D

#preload player_container class
const player_container = preload("res://Objects/Scripts/PadContainer.tres")


func _physics_process(delta):
	var velo = speed * direction * delta
	var collision = move_and_collide(velo*delta)
	
	if collision != null:
		direction = direction.bounce(collision.get_normal())
		#Player
#		if collision.get_collider() == player_container.player:
#			pass
		#Brick
		if collision.get_collider().get_meta("brick"):
			collision.get_collider().HealthDamage()
#		print(collision.get_collider().get_meta_list())
#		if collision.collider == 
	if raycast.is_colliding():
		if raycast.get_collider().is_in_group("pad"):
			pass
