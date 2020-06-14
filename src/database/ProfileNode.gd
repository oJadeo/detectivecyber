extends PanelContainer
class_name ProfileNode

var profile: Profile = Profile.new("Zachery Igo", "Male", "50", "183", "Owner", "40", "None", "823-125-0346")

#func _init(var profile: Profile):
	#self.profile = profile

func _ready():
	$ProfileContainer/Head/Data/Name.text = "Name: " + profile.name
	$ProfileContainer/Head/Data/Age.text = "Age: " + profile.age
	$ProfileContainer/Head/Data/Weight.text = "Weight: " + profile.weight
	$ProfileContainer/Head/Data/Height.text = "Height: " + profile.height
	$ProfileContainer/Head/Data/Occupation.text = "Occupation: " + profile.occupation
	$ProfileContainer/Head/Data/Gender.text = "Gender: " + profile.gender
	$ProfileContainer/Head/Data/Telephone.text = "Tel." + profile.tel_num
	for i in profile.crime_history:
		var a = Label.new()
		a.text = "- " + i
		$ProfileContainer/CrimeHistory.add_child(a)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
