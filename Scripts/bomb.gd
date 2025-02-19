extends Area2D

class_name Bomb

const CENTRAL_EXPLOSION = preload("res://Scenes/central_explosion.tscn")

var explosion_size = 1

func _on_timer_timeout() -> void:
	var explosion = CENTRAL_EXPLOSION.instantiate()
	explosion.position = position
	explosion.size = explosion_size
	get_tree().root.add_child(explosion)
	queue_free()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
