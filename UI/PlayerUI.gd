extends Control

@onready var BallLabel = $Balls/BallLabel
@onready var ScoreLabel = $Score/ScoreLabel

func _process(delta):
	BallLabel.text = str(GlobalScript.BallLive)
	ScoreLabel.text = str(GlobalScript.Score)
