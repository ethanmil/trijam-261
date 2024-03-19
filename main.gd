extends Node2D

var enemy = preload("res://enemy.tscn")
var enemy_limit = 5
var enemy_count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_spawn_timeout():
	if enemy_count < enemy_limit:
		var newEnemy = enemy.instantiate()

		var enemySize = newEnemy.get_node("Sprite2D").texture.get_size()
		
		var x = randi_range(0, get_viewport().size.x - enemySize.x)
		var y = randi_range(0, get_viewport().size.y - enemySize.y)
		
		newEnemy.position = Vector2(x, y)
		
		add_child(newEnemy)
		enemy_count += 1
	pass # Replace with function body.
