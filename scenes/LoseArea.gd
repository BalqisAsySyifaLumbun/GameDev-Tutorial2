extends Area2D

@onready var plane = get_node("../BlueShip") 
@onready var plane2 = get_node("../BlueShip2") 
@onready var counter = get_node("../Counter")
@onready var mistake = get_node("../Mistakes")

var count: int = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_counter() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "BlueShip" or body.name == "BlueShip2":
		count = count - 1
		print(count)
		update_counter()
		if count == 0:
			lose()

func update_counter():
	counter.text = str(count)
	
func lose():
		print("Gemoper")
		mistake.text = "               GAME OVER             "
		mistake.visible = true
