extends Node2D

var missle = preload("res://missle.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	var planet_position = get_node("../planet").position
	look_at(planet_position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_missle_spawn_timeout():
	var newMissle = missle.instantiate()
	
	add_child(newMissle)
	
	pass # Replace with function body.
