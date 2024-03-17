extends CharacterBody2D


var planet_position = Vector2(0, 0)
var speed = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy = get_parent()
	var main = enemy.get_parent()
	var planet = main.get_node("planet")
	
	planet_position = planet.position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = (planet_position - position).normalized() * delta * speed
	move_and_collide(velocity)
	
	pass
