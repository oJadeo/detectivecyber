extends PanelContainer

var mouseOver = false

func _ready():
	pass
		

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if mouseOver:
				get("custom_styles/panel").set("bg_color", Color("#ffffff"))
				var head = get_parent().get_parent()
				head.app.get_parent().remove_child(head.app) #ok now

func _on_Exit_mouse_entered():
	get("custom_styles/panel").set("bg_color", Color("#ff6363"))
	mouseOver = true
	pass # Replace with function body.


func _on_Exit_mouse_exited():
	get("custom_styles/panel").set("bg_color", Color("#ffffff"))
	mouseOver = false
	pass # Replace with function body.
