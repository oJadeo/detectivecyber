extends Button

var program = load("res://src/mail/MailApp.tscn").instance()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _pressed() -> void:
	if($dbClicker.is_stopped()):
		$dbClicker.start()
	else:
		get_parent().get_parent().add_child(program)
		get_parent().get_parent().move_child(program,1)
