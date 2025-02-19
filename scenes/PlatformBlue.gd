extends Node2D

@export var speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")
	print("StonePlatform global position: ", $StonePlatform.global_position)
	print("StonePlatform2 global position: ", $StonePlatform2.global_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		move_local_y(-speed * delta, false)
	
	if Input.is_action_pressed("ui_down"):
		move_local_y(speed * delta, false)
