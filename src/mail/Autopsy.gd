extends VBoxContainer

var autopsyNum: String
var hospitalName: String
var autopsyName: String
var policeStationName: String
var date: String
var time: String
var autopsyProfile : Profile
var fileName : String = "Zachery Igo"

func setup_font(font_size: int, mode: String):
	var new_font = DynamicFont.new()
	if mode == "b":
		new_font.font_data = load("res://res/font/THSarabunNew Bold.ttf")
	elif mode == "i":
		new_font.font_data = load("res://res/font/THSarabunNew Italic.ttf")
	else:
		new_font.font_data = load("res://res/font/THSarabunNew.ttf")
	new_font.size = font_size
	return new_font

func setup(autopsyNum, hospitalName, autopsyName, policeStationName, date, time):
	self.autopsyNum = autopsyNum
	self.hospitalName = hospitalName
	self.autopsyName = autopsyName
	self.policeStationName = policeStationName
	self.date = date
	self.time = time
	autopsyProfile = Profile.new(autopsyName, "", "", "", "", "", "", "")
	$Num.text = "No. " + autopsyNum
	$Hospital.text = "Send to: " + hospitalName
	$Name.text = "Name: " + autopsyProfile.name
	$PoliceStation.text = "From: " + policeStationName
	$DateTime.text = "Date: " + date + "   Time: " + time

func _ready() -> void:
	
	$Title.set("custom_fonts/font", setup_font(20, "b"))
	$Num.set("custom_fonts/font", setup_font(18, "b"))
	$Hospital.set("custom_fonts/font", setup_font(18, "b"))
	$PoliceStation.set("custom_fonts/font", setup_font(18, "b"))
	$DateTime.set("custom_fonts/font", setup_font(18, "b"))
	$Subtitle1.set("custom_fonts/font", setup_font(20, "b"))
	$Observe/Title.set("custom_fonts/font", setup_font(18, "b"))
	$LabTest/Title.set("custom_fonts/font", setup_font(18, "b"))
	$Opinion/Title.set("custom_fonts/font", setup_font(18, "b"))
	
	var f = File.new()
	f.open("res://src/mail/autopsy.json", File.READ)
	var text = f.get_as_text()
	f.close()
	
	var data = JSON.parse(text).result
	
	if fileName in data:
		var i = data[fileName]
		setup(i["autopsyNum"], i["hospitalName"], i["autopsyName"], \
		i["policeStationName"], i["date"], i["time"])
		
		for j in i["observe"]:
			var a = Label.new()
			a.text = "- " + j
			a.set("custom_fonts/font", setup_font(18, "r"))
			$Observe.add_child(a)
			
		for j in i["labTest"]:
			var a = Label.new()
			a.text = "- " + j
			a.set("custom_fonts/font", setup_font(18, "r"))
			$LabTest.add_child(a)
			
		for j in i["opinion"]:
			var a = Label.new()
			a.text = "- " + j
			a.set("custom_fonts/font", setup_font(18, "r"))
			$Opinion.add_child(a)


