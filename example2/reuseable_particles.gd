tool
extends Node2D

const COLORS = [
	Color(0.46875, 0.198312, 0.10437),
	Color(0.107666, 0.4375, 0.398848),
	Color(0.035797, 0.255976, 0.539062)
]

export(int, "Fire", "Ice", "Water") var color = 0 setget set_color

# Called when the node enters the scene tree for the first time.
func _ready():
	set_color(color)

func set_color(new_color):
	color = new_color
	if is_inside_tree():
		modulate = COLORS[color]
