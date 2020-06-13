extends VBoxContainer

var autopsyNum = ""
var hospitalName = ""
var autopsyName = ""
var policeStationName = ""
var dateTime = ""
var autopsyProfile

func setup(autopsyNum, hospitalName, autopsyName, policeStationName, dateTime):
	self.autopsyNum = autopsyNum
	self.hospitalName = hospitalName
	self.autopsyName = autopsyName
	self.policeStationName = policeStationName
	self.dateTime = dateTime
	autopsyProfile = Profile.new(autopsyName, "", "", "", "", "", "", "")
	$Num.text = "No." + autopsyNum
	$Hospital.text = "Send to: " + hospitalName
	$Name.text = "Name: " + autopsyProfile.name
	$PoliceStation.text = "From: " + policeStationName
	$DateTime.text = "Date/Time: " + dateTime

func _ready():
	autopsyProfile = Profile.new(autopsyName, "", "", "", "", "", "", "")
	$Num.text = "No." + autopsyNum
	$Hospital.text = "Send to: " + hospitalName
	$Name.text = "Name: " + autopsyProfile.name
	$PoliceStation.text = "From: " + policeStationName
	$DateTime.text = "Date/Time: " + dateTime


