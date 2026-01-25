extends Node

var cash : float = 50.00
var first_name = "Tony"
var last_name = "Siproni"
var daily_wage = 50.00
enum rank_state {Noobie, Junior, Officer, Senior_officer, Master}
var current_rank_state = rank_state.Noobie
var rank = rank_state.keys()[current_rank_state]
enum hunger_state {Dying, Starving, Hungry, Alright, Great, Full, Fatso}
var hunger = hunger_state.Fatso
var current_hunger_state = hunger_state.keys()[hunger]
var went_to_work = false
var times_ate_today
var total_food_items
