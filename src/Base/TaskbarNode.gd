extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var app

func setup_taskbar(app, task_icon_path, task_name):
	self.app = app
	$Container/TaskIcon.texture = load(task_icon_path)
	self.name = "taskbar_" + task_name
	$Container/TaskLabel.text = task_name
	pass


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
