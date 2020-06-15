extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	$MailAppUseContainer.margin_bottom = get_parent().get_parent().margin_bottom - get_parent().get_node("AppControl").margin_bottom - 2
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
