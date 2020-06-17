extends ScrollContainer

class single_mail:
	extends Button
	signal open_this_mail(title)
	var header: String
	var sender: String
	
	func _init(header, sender):
		
		self.header = header
		self.sender = sender
		
		var style_normal = StyleBoxFlat.new()
		style_normal.bg_color = Color("#ffffff")
		set("custom_styles/normal", style_normal)
		
		var style_hover = StyleBoxFlat.new()
		style_hover.bg_color = Color("#6D8A60")
		set("custom_styles/hover", style_hover)
		
		var k = VBoxContainer.new()
		var headerLabel = Label.new()
		var senderLabel = Label.new()
		
		headerLabel.text = header
		senderLabel.text = sender
		
		headerLabel.align = Label.ALIGN_LEFT
		headerLabel.valign = Label.VALIGN_CENTER
		senderLabel.align = Label.ALIGN_LEFT
		senderLabel.valign = Label.VALIGN_CENTER
		
		headerLabel.rect_min_size = Vector2(100, 20)
		senderLabel.rect_min_size = Vector2(100, 20)
		
		headerLabel.set("custom_colors/font_color", Color.black)
		senderLabel.set("custom_colors/font_color", Color.black)
		
		k.add_child(headerLabel)
		k.add_child(senderLabel)
		
		rect_min_size = headerLabel.rect_min_size + senderLabel.rect_min_size + Vector2(2, 2)
		self.add_child(k)
	
	func _pressed():
		emit_signal("open_this_mail", header)
		pass
		

func mail(data : Dictionary):
	var k = single_mail.new(data["header"], data["sender"])
	k.connect("open_this_mail", self, "open_mail")
	return k

func open_mail(title):
	var k = load("res://src/mail/MailBox.tscn").instance()
	k.setup("title", "", "", {})
	while(get_child_count() > 0):
		remove_child(get_child(0))
	k.rect_min_size = self.rect_size
	add_child(k)

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
