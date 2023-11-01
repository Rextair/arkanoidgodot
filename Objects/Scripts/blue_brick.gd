extends StaticBody2D

@export var health = 1
@export var Score = 115

func _ready():
	set_meta("brick", true)

func HealthDamage():
	health -= 1
	
	if health <= 0:
		queue_free()
		GlobalScript.Score += Score
