extends Control



func setTitle(title):
	$NAME.text = title
	

func message_receive(message):
	var chat = Label.new()
	chat.text = message
	chat.align = Label.ALIGN_LEFT
	$Messagelog.add_child(chat)
	
		
	
func message_send(message):
	var chat = Label.new()
	chat.text = message
	chat.align = Label.ALIGN_RIGHT
	$Messagelog.add_child(chat)



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
