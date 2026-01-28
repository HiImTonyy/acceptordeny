extends Node

signal start_event(event_type : String)
signal event_has_started

var event_selected 
var main_text : String
var choice_1_text : String
var choice_2_text : String
var chose_choice_1 : bool
var chose_choice_2 : bool
var choice_1_outcome_text : String
var choice_1_negative_outcome_text : String
var choice_2_outcome_text : String

var did_not_pay_rent_negative_chance : int = 35
var sleep_event_chance : int = 20
var end_workday_event_chance : int = 30

var unique_events = [
	{
		"event_name": "did_not_pay_rent",
		"main_text": "You forgot to pay your rent. what do you do?",
		"choice_1_text": "Do nothing " + "(" + str(did_not_pay_rent_negative_chance) + "% chance of negative outcome" + ").",
		"choice_2_text": "Call the Landlord and say that you'll pay double the amount.",
		"chose_choice_1": false,
		"chose_choice_2": false,
		"choice_1_outcome_text": "Wow, nothing bad happened.",
		"choice_1_negative_outcome_text": "The Landlord slammed in your door and knocked you unconcious with a baseball bat. you woke up and found that he stole 30% of your money",
		"choice_2_outcome_text": "The landlord accepts and ends the call after calling you an idiot."
	}
]

var sleep_events # NEEDS TO BE ADDED
var end_of_workday_events # NEEDS TO BE ADDED


func _ready():
	start_event.connect(select_event)
	
	
	
func select_event(event_type : String):
	bills.rent_paid = false
	bills.days_till_rent = - 1
	
	var roll = randi_range(1, 100)
	
	if bills.rent_paid == false and bills.days_till_rent <= 0 and bills.electricity_paid == false and bills.days_till_electric <= 0:
		pass
		
	if bills.rent_paid == false and bills.days_till_rent < 0:
		event_selected = unique_events[0]
	else:
		match event_type:
			"sleeping":
				if roll > sleep_event_chance:
					return
				else:
					event_selected = sleep_events.pick_random()
			"end_of_workday":
				event_selected = end_of_workday_events.pick_random()
	
	set_event_variables()
	
func set_event_variables():
	main_text = event_selected["main_text"]
	choice_1_text = event_selected["choice_1_text"]
	choice_2_text = event_selected["choice_2_text"]
	chose_choice_1 = event_selected["chose_choice_1"]
	chose_choice_2 = event_selected["chose_choice_2"]
	choice_1_outcome_text = event_selected["choice_1_outcome_text"]
	choice_1_negative_outcome_text = event_selected["choice_1_negative_outcome_text"]
	choice_2_outcome_text = event_selected["choice_2_outcome_text"]
	
	event_has_started.emit()
	
	
func event_outcomes():
	match event_selected["event_name"]:
		"did_not_pay_rent":
			if chose_choice_1 == true:
				print("CHOICE 1!")
			else:
				print("CHOICE 2!")
