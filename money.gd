extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect.color = Color(0,0,1)




func _on_Area2D_body_entered(body):
	$ColorRect.color = Color(1,1,0)

func reset():
	$ColorRect.color = Color(0,0,1)


