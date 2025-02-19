extends Node2D

class_name BombPlacementSys

const BOMB_SCENE = preload("res://Scenes/bomb.tscn")
const TILE_SIZE = 16

var player: Player = null
var bombs_placed = 0
var explosion_size = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func place_bomb():
	if bombs_placed == player.max_bombs:
		return
	
	var bomb = BOMB_SCENE.instantiate()
	var player_position = player.position
	var bomb_position = Vector2(floor(player.position.x / TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2, \
							floor(player.position.y / TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2)


	bomb.position = bomb_position
	get_tree().root.add_child(bomb)
	bombs_placed += 1
	bomb.tree_exiting.connect(on_bomb_exploded)
	
func on_bomb_exploded():
	bombs_placed += -1
