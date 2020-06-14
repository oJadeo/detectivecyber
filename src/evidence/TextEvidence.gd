extends PanelContainer
class_name TextEvidence

var evidenceName: String = "Pic"
var text: String = "5555555555555555"
var backgroundPath: String = "res://res/bg/mountain_bg.jpg"

func setup(evidenceName: String, text: String, backgroundPath: String) -> void:
	self.evidenceName = evidenceName
	self.text = text
	self.backgroundPath = backgroundPath

func _ready():
	var styles = StyleBoxTexture.new()
	var img = load(backgroundPath)
	rect_size = Vector2((img as StreamTexture).get_width(), (img as StreamTexture).get_height())
	styles.texture = img
	self.set("custom_styles/panel", styles)
	$Text.text = text


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
