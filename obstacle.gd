extends Area2D

signal restart


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_obstacle_body_entered(body):
	body.global_position = Vector2(0,-40)
	emit_signal("restart")
