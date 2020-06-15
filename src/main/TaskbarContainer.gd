extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Mail_Button_taskbar_add(task_app, task_icon_path, task_name):
	var mail_task = load("res://src/Base/TaskbarNode.tscn").instance()
	mail_task.setup_taskbar(task_app, task_icon_path, task_name)
	add_child(mail_task)
	pass # Replace with function body.
