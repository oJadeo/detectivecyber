extends VBoxContainer

var title
var context
var sender
var file_attach

func setup(title, context, sender, file_attach : Dictionary):
	$Title.text = title
	$Context.text = context
	$Sender.text = sender
	for i in file_attach.keys():
		var k = Label.new()
		k.text = i
		$FileAttach.add_child(k)

func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
