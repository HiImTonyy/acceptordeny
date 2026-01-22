extends Node

var first_name = "Tony"
var last_name = "Sepreoni"
var cash : float = 0.00
enum rank {noobie, junior, officer, senior_officer, master}
var current_rank = rank.noobie
var daily_wage : float = 50.00
var went_to_work : bool = false
enum hunger_level {dying, very_hugry, hungry, alright, great, full, fatso}
var current_hunger_level = hunger_level.great
var times_ate_today : int = 0
var total_food_items : int = 0
