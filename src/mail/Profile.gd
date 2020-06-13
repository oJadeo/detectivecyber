class_name Profile

var name
var gender
var weight
var height
var occupation
var age
var crime_history
var tel_num
var au

func _init(name, gender, weight, height, occupation, age, crime_history, tel_num):
	self.name = name
	self.gender = gender
	self.weight = weight
	self.height = height
	self.occupation = occupation
	self.age = age
	self.tel_num = tel_num
	self.crime_history = crime_history.split(",")
