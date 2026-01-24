extends Node

signal update_stats_signal

var cash : float = 50.00

var _cash: float:
	set(value):
		cash = value
		update_stats()
	get:
		return cash
var first_name = "Tony"
var last_name = "Siproni"
var daily_wage = 50.00
enum rank_state {Noobie, Junior, Officer, Senior_officer, Master}
var current_rank_state = rank_state.Noobie
var rank = rank_state.keys()[current_rank_state]
enum hunger_state {Dying, Very_Hugry, Hungry, Alright, Great, Full, Fatso}
var current_hunger_state = hunger_state.Great
var hunger = hunger_state.keys()[current_hunger_state]
var went_to_work = false
var times_ate_today
var total_food_items
var total_correct_judgements = 0


func update_stats():
	update_stats_signal.emit()
