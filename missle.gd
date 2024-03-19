extends CharacterBody2D

var planet_position = Vector2(0,0)
var speed = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	var planet = get_node("../../planet")
	planet_position = planet.global_position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	velocity = (planet_position - global_position).normalized() * delta * speed
	var collision_info = move_and_collide(velocity)
	if collision_info:
		queue_free()
	pass
