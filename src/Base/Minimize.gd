extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Label.text = PoolByteArray([240, 159, 151, 150]).get_string_from_utf8()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Minimize_mouse_entered():
	get("custom_styles/panel").set("bg_color", Color("#aeaeae"))
	pass # Replace with function body.


func _on_Minimize_mouse_exited():
	get("custom_styles/panel").set("bg_color", Color("#ffffff"))
	pass # Replace with function body.
