extends TextureButton

signal taskbar_add(task_app, task_icon_path, task_name)

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
		var k = load("res://src/mail/MailApp.tscn").instance()
		k.rect_size = get_parent().rect_size
		get_parent().get_parent().add_child(k)
		get_parent().get_parent().move_child(k,1)
		emit_signal("taskbar_add", k, "res://res/icon/mail.png", "Mail")
