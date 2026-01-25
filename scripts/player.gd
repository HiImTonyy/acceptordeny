extends Node

var cash : float = 50.00
var first_name : String = "Tony"
var last_name : String = "Siproni"
var daily_wage : float = 50.00
enum rank_state {Noobie, Junior, Officer, Senior_officer, Master}
var current_rank_state = rank_state.Noobie
var rank = rank_state.keys()[current_rank_state]
enum hunger_state {Dying, Starving, Hungry, Alright, Great, Full, Fatso}
var hunger = hunger_state.Fatso
var current_hunger_state = hunger_state.keys()[hunger]
var went_to_work : bool = false
var times_ate_today : int = 0
var total_food_items : int = 0
var promote_chance : float = 0.00
var demote_chance : float = 0.00
