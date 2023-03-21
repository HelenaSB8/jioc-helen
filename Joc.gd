extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(name)
	print(get_children())
	for fill in $Parets.get_children():
		fill.connect("restart", self, "restart")

func restart():
	for area in $Arees.get_children():
		area.reset()




