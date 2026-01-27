extends Node

signal start_event(event_type : String)

var event_selected 
var did_not_pay_rent_negative_chance : int = 35
var main_text : String
var choice_1_text : String
var choice_2_text : String
var chose_choice_1 : bool
var chose_choice_2 : bool
var choice_1_outcome_text : String
var choice_1_negative_outcome_text : String
var choice_2_outcome_text : String

var unique_events = [
	{
		"event_name": "did_not_pay_rent",
		"main_text": "You forgot to pay your rent. what do you do?",
		"choice_1_text": "Do nothing " + str(did_not_pay_rent_negative_chance) + "% chance of negative outcome",
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
	bills.days_till_rent = -1 
	
	if bills.rent_paid == false and bills.days_till_rent < 0:
		event_selected = unique_events[0]
	else:
		match event_type:
			"sleeping":
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
	
	print("MAIN TEXT: " + main_text)
	print("CHOICE 1 TEXT: " + choice_1_text)
	print("CHOICE 2 TEXT: " + choice_2_text)
	print("CHOICE 1 BOOL: " + str(chose_choice_1))
	print("CHOICE 2 BOOL: " + str(chose_choice_2))
	print("CHOICE 1 OUTCOME TEXT: " + choice_1_outcome_text)
	print("CHOICE 1 NEGATIVE OUTCOME TEXT: " + choice_1_negative_outcome_text)
	print("CHOICE 2 OUTCOME TEXT: " + choice_2_outcome_text)
