extends KinematicBody2D

var velocitat := 150
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 100
var salt := Vector2.UP * 150
var direccio := Vector2.ZERO
var Position := Vector2(0,-40)

# Called when the node enters the scene tree for the first time.
func _ready():
	Position = Vector2(0,-40)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat*delta
	moviment.y = Input.get_axis("ves_dalt","ves_baix")*velocitat
	moviment.x = velocitat

#	if Input.is_action_just_pressed("ves_dalt") and is_on_floor():
#		moviment += salt
	moviment = move_and_slide(moviment, Vector2.UP)
	
#func _mort():
#	if is_on_floor():
#		get_tree().paused = true
#		$Label.text = "game over"


func _on_obstacle_body_entered(body):
	Position = Vector2(0,-40)

#func _on_StaticBody2D5_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D2_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D3_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D4_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D6_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D7_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D8_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D20_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D9_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D21_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D22_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D10_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D23_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D39_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D24_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D26_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D27_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D28_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D29_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D30_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D14_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D38_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D35_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D43_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D44_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D42_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D41_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D40_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D37_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D36_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D34_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D33_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D19_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D17_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D18_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D16_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D13_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D12_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D25_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D11_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D31_body_exited(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D32_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D45_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D46_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D48_body_entered(body):
#	Position = Vector2(0,-40)
#
#func _on_StaticBody2D47_body_entered(body):
#	Position = Vector2(0,-40)


