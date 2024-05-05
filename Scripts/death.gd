extends Node2D

const speed = 80
@onready var catto = $"../catto"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if catto:
		position += position.direction_to(catto.position) * 0.4 * speed * delta
		look_at(catto.position)
