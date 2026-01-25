extends Node2D

# TOP UI
@export var label_player_name : Label
@export var label_player_cash : Label
@export var label_hunger_level : Label
@export var label_rank : Label

# PLAYER STATS
@export var label_stats_total_correct_judgements : Label
@export var label_stats_total_incorrect_judgements : Label
@export var label_stats_judgement_success_rate : Label
@export var label_stats_total_errors_spotted_correctly : Label
@export var label_stats_total_errors_spotted_incorrectly : Label
@export var label_stats_errors_spotted_success_rate : Label
@export var label_stats_total_cash_made : Label
@export var label_stats_total_food_paid : Label
@export var label_stats_total_rent_paid : Label
@export var label_stats_total_electricity_paid : Label
@export var label_stats_total_bills_paid : Label
@export var label_stats_highest_correct_judgement_streak : Label
@export var label_stats_highest_incorrect_judgement_streak : Label
@export var label_stats_highest_judgement_days_streak : Label

# OTHER INFORMATION
@export var label_other_days_till_rent : Label
@export var label_other_rent_cost : Label
@export var label_other_days_till_electricity : Label
@export var label_other_electric_cost : Label
@export var label_current_date : Label



func _ready():
	update_ui()
	
	
func update_ui():
	player.current_hunger_state = player.hunger_state.keys()[player.hunger]
	player.current_rank_state = player.rank_state.keys()[player.rank]
	
	# TOP U.I
	label_player_name.text = player.first_name + " " + player.last_name
	label_player_cash.text = "Balance: " + "$" + str(snapped(player.cash, 0.01))
	label_hunger_level.text = "Hunger State: " + player.current_hunger_state
	label_rank.text = "Rank: " + player.current_rank_state
	
	# PLAYER STATS
	label_stats_total_correct_judgements.text = "Total Correct Judgements: " + str(playerstats.total_correct_judgements)
	label_stats_total_incorrect_judgements.text = "Total Incorrect Judgements: " + str(playerstats.total_incorrect_judgements)
	label_stats_judgement_success_rate.text = "Judgement Success Rate: " + str(snapped(playerstats.judgement_success_rate, 0.01)) + "%"
	label_stats_total_errors_spotted_correctly.text = "Total Errors Spotted Correctly: " + str(playerstats.total_errors_spotted_correctly)
	label_stats_total_errors_spotted_incorrectly.text = "Total Errors Spotted Incorrectly: " + str(playerstats.total_errors_spotted_incorrectly)
	label_stats_errors_spotted_success_rate.text = "Errors Spotted Success Rate: " + str(snapped(playerstats.errors_spotted_success_rate, 0.01)) + "%"
	label_stats_total_cash_made.text = "Total Cash Made: " + "$" + str(playerstats.total_cash_made)
	label_stats_total_food_paid.text = "Total Food Paid: " + "$" + str(playerstats.total_food_paid)
	label_stats_total_rent_paid.text = "Total Rent Paid: " + "$" + str(playerstats.total_rent_paid)
	label_stats_total_electricity_paid.text = "Total Electricity Paid: " + "$" + str(playerstats.total_electricity_paid)
	label_stats_total_bills_paid.text = "Total Bills Paid: " + "$" + str(playerstats.total_bills_paid)
	label_stats_highest_correct_judgement_streak.text = "Highest Correct Judgement Streak: " + str(playerstats.highest_correct_judgement_streak)
	label_stats_highest_incorrect_judgement_streak.text = "Highest Incorrect Judgement Streak: " + str(playerstats.highest_incorrect_judgement_streak)
	label_stats_highest_judgement_days_streak.text = "Highest Judgement Days Streak: " + str(playerstats.highest_judgement_days_streak)
	
	# OTHER INFORMATION
	label_other_days_till_rent.text = "Days Till Rent Bill: " + str(bills.days_till_rent)
	label_other_rent_cost.text = "Rent Cost: " + "$" + str(bills.rent_cost)
	label_other_days_till_electricity.text = "Days Till Electric Bill: " + str(bills.days_till_electric)
	label_other_electric_cost.text = "Electricity Cost: " + "$" + str(bills.electric_cost)
	
	label_current_date.text = world.current_date


func _on_button_button_down() -> void:
	world.next_day()
	update_ui()
