extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var po = load("res://src/mail/Autopsy.tscn")
	var k = po.instance()
	k.setup("9635", "12", "815", "153", "")
	#add_child(k)
	
	var m = load("res://src/mail/MailBox.tscn").instance()
	m.setup("12345", "123", "21252", {"a" : 1, "b" : 2})
	add_child(m)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
