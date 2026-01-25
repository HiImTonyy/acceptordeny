extends Node

var current_month : int = 8
var current_day : int = 8
var current_year : int = 1998
var current_date: String = "WINDS-A BLOWIN', FAT MAN ROLLIN'"

func _ready() -> void:
	format_current_date()


func format_current_date():
	current_date = "Current Date: " + str("%02d" % current_month) + "/" + str("%02d" % current_day) + "/" + str(current_year)
	
func next_day():
	if current_day <= 30:
		current_day += 1
	if current_day > 30:
		current_month += 1
		current_day = 1
	if current_month > 12:
		current_month = 1
		current_year += 1
		
	format_current_date()
