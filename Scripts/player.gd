extends Area2D

class_name Player

var movement: Vector2 = Vector2.ZERO

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@export var movement_speed: float = 75

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += movement * delta * movement_speed


func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("right"):
		movement = Vector2.RIGHT
		animated_sprite_2d.play("walk_right")
	elif Input.is_action_pressed("left"):
		movement = Vector2.LEFT
		animated_sprite_2d.play("walk_left")
	elif Input.is_action_pressed("up"):
		movement = Vector2.UP
		animated_sprite_2d.play("walk_up")
	elif Input.is_action_pressed("down"):
		movement = Vector2.DOWN
		animated_sprite_2d.play("walk_down")
	else :
		movement = Vector2.ZERO
		animated_sprite_2d.play("default")
		
