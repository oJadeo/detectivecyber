extends ScrollContainer
class_name Inbox

func mail(data : Dictionary):
	var m = VBoxContainer.new()
	var headerLabel = Label.new()
	var senderLabel = Label.new()
	
	headerLabel.text = data["header"]
	senderLabel.text = data["sender"]
	
	headerLabel.set("custom_colors/font_color", Color.black)
	senderLabel.set("custom_colors/font_color", Color.black)
	
	m.add_child(headerLabel)
	m.add_child(senderLabel)
	return m

func _ready():
	var f = File.new()
	f.open("res://src/mail/mail.json", File.READ)
	var text = f.get_as_text()
	f.close()
	
	var data = JSON.parse(text).result
	
	for i in data.keys():
		$InboxContainer.add_child(mail(data[i]))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
