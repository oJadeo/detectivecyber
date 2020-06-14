extends Panel


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var computer = load("res://src/main/Computer.tscn").instance()
var show_drag = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$work.add_child(computer)
	pass # Replace with function body.

func toggle():
	show_drag = !show_drag
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
