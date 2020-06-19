extends PanelContainer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func open_mail(title):
	var k = load("res://src/mail/MailBox.tscn").instance()
	k.setup(title, "", "", {})
	if(get_child_count() > 0):
		remove_child(get_child(0))
	k.rect_min_size = self.rect_size
	add_child(k)


func _on_InboxLabel_pressed():
	var k = load("res://src/mail/Inbox.tscn").instance()
	if(get_child_count() > 0):
		remove_child(get_child(0))
	k.rect_min_size = self.rect_size
	add_child(k)
	pass # Replace with function body.
