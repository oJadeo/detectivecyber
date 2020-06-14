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


func choose(message : Array):
	for i in message:
		var k = Button.new()
		k.text = i
		k.align = Label.ALIGN_RIGHT
		k.connect("pressed",self,"delete",[i])
		$Choose.add_child(k)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func delete(message):
	message_send(message)
	for e in $Choose.get_children():
		$Choose.remove_child(e)
		e.queue_free()
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	message_receive("A")
	message_send("B")
	message_receive("C")
	choose(['D',"E","F"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
