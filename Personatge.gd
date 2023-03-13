extends KinematicBody2D

var velocitat := 100
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 100
var salt := Vector2.UP * 150
var direccio := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat*delta
	moviment.y = Input.get_axis("ves_dalt","ves_baix")*velocitat 
	moviment.x = velocitat

	if Input.is_action_just_pressed("ves_dalt") and is_on_floor():
		moviment += salt


	moviment = move_and_slide(moviment, Vector2.UP)
	