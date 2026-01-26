extends Node

var total_correct_judgements = 0
var total_incorrect_judgements = 0
var judgement_success_rate : float = 0.00
var total_errors_spotted_correctly = 0
var total_errors_spotted_incorrectly = 0
var errors_spotted_success_rate : float = 0.00
var total_cash_made : float = 0.00
var total_food_paid : float = 0.00
var total_rent_paid : float = 0.00
var total_electricity_paid : float = 0.00
var total_bills_paid : float = 0.00
var highest_correct_judgement_streak = 0
var highest_incorrect_judgement_streak = 0
var highest_judgement_days_streak = 0


func _ready():	
	bills.stats_increase.connect(increase_stats)
	
func increase_stats(stat: String):
	match stat:
		"rent":
			total_rent_paid += bills.rent_cost
			total_bills_paid += bills.rent_cost
		"electric":
			total_electricity_paid += bills.electric_cost
			total_bills_paid += bills.electric_cost
