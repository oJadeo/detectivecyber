extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var app
var mouseOver = false
var normal_color = "#ffffff"
var k

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
func _process(delta):
	if(app.is_visible()):
		normal_color = "#cecece"
	else:
		normal_color = "#ffffff"
	pass

func _input(event):
	if mouseOver:
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				if (event as InputEventMouseButton).is_pressed():
					if(!app.is_visible()):
						app.show()
					else:
						app.hide()


func _on_TaskbarNode_mouse_entered():
	get("custom_styles/panel").set("bg_color", Color("#aeaeae"))
	mouseOver = true
	pass # Replace with function body.


func _on_TaskbarNode_mouse_exited():
	get("custom_styles/panel").set("bg_color", Color(normal_color))
	mouseOver = false
	pass # Replace with function body.
