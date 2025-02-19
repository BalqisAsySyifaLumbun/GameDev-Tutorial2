extends Area2D

@export var speed: float = 200  
@export var move_range: float = 500  
var direction: int = 1
var start_position: Vector2

@onready var plane = get_node("../BlueShip") 
@onready var plane2 = get_node("../BlueShip2") 
@onready var mistake = get_node("../Mistakes")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_position = position  # Store initial position

func _process(delta: float) -> void:
	position.x += speed * direction * delta
	
	# Reverse direction if out of bounds
	if position.x > start_position.x + move_range:
		direction = -1
	elif position.x < start_position.x - move_range:
		direction = 1

func plane_die():
	mistake.visible = true
	print("BAD MOVE!!!")
	await get_tree().create_timer(3.0).timeout
	mistake.visible = false


func _on_body_entered(body: Node2D) -> void:
	if body.name == "BlueShip" or body.name == "BlueShip2":  
		plane_die()
