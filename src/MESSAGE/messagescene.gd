extends Control

onready var namelabel = $MessagePanel/HSplitContainer/PersonalChat/CHAT/NAME
onready var messagecontainer = $MessagePanel/HSplitContainer/PersonalChat/CHAT/Messagelog
onready var choosecontainer = $MessagePanel/HSplitContainer/PersonalChat/CHAT/Choose
onready var namecontainer = $MessagePanel/HSplitContainer/Namelist/Namecontainer
func setTitle(title):
	namelabel.text = title
	

func message_receive(message):
	var chat = Label.new()
	chat.text = message
	chat.align = Label.ALIGN_LEFT
	messagecontainer.add_child(chat)
	
		
	
func message_send(message):
	var chat = Label.new()
	chat.text = message
	chat.align = Label.ALIGN_RIGHT
	messagecontainer.add_child(chat)


func choose(message : Array):
	for i in message:
		var k = Button.new()
		k.text = i
		k.align = Label.ALIGN_RIGHT
		k.connect("pressed",self,"delete",[i])
		choosecontainer.add_child(k)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func delete(message):
	message_send(message)
	for e in choosecontainer.get_children():
		choosecontainer.remove_child(e)
		e.queue_free()
		
func putnamelist(namelist : Array):
	for e in namelist:
		var k = Button.new()
		k.text = e
		k.connect("pressed",self,"getchat",[e])
		namecontainer.add_child(k)
# Called when the node enters the scene tree for the first time.

func getchat(name:String):
	setTitle(name)

func _ready():
	$MessagePanel/AppControl.app = self
	putnamelist(["OjadeO","Kirkpig","Naem"])

	message_receive("A")
	message_send("B")
	message_receive("C")
	choose(['D',"E","F"])


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
