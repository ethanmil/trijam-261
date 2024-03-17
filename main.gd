extends Node2D

var enemy = preload("res://enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_spawn_timeout():
	print("timeout executed")
	var newEnemy = enemy.instantiate()
	
	var enemySize = newEnemy.get_node("Sprite2D").texture.get_size()
	
	var x = randi_range(0, get_viewport().size.x - enemySize.x)
	var y = randi_range(0, get_viewport().size.y - enemySize.y)
	
	print("x", x)
	print("y", y)
	
	newEnemy.position = Vector2(x, y)
	
	print("pos", newEnemy.position)
	
	add_child(newEnemy)
	pass # Replace with function body.
