extends Node2D

@export var menu_containers: VBoxContainer
@export var input_containers: VBoxContainer
@export var input_first_name: LineEdit
@export var input_last_name: LineEdit


func _on_new_game_button_down() -> void:
	sound.play_sound(sound.play.click)
	menu_containers.visible = false
	input_containers.visible = true 
	$MenuUI/LabelInputTitle.visible = true


func _on_start_game_button_button_down() -> void:
	if input_first_name.text and input_last_name.text != "":
		sound.play_sound(sound.play.click)
		player.first_name = input_first_name.text
		player.last_name = input_last_name.text
		set_player_shit()
		
		get_tree().change_scene_to_file("res://scenes/home.tscn")
	else:
		sound.play_sound(sound.play.error)
		world.popup_message("FIRST NAME AND LAST NAME CANNOT BE THE SAME!", Color.RED, $MenuUI, "center_bottom")
		

func set_player_shit():
	# just player
	player.cash = 50.00
	player.rank = player.rank_state.Noobie
	player.hunger = player.hunger_state.Alright
	player.daily_wage = 50.00
	player.went_to_work = false
	player.times_ate_today = 0
	player.total_food_items = 0
	player.promote_chance = 0.00
	player.demote_chance = 0.00
	
	# player stats
	playerstats.total_correct_judgements = 0
	playerstats.total_incorrect_judgements = 0
	playerstats.judgement_success_rate = 0.00
	playerstats.total_errors_spotted_correctly = 0
	playerstats.total_errors_spotted_incorrectly = 0
	playerstats.errors_spotted_success_rate = 0.00
	playerstats.total_cash_made = 0.00
	playerstats.total_food_paid = 0.00
	playerstats.total_rent_paid = 0.00
	playerstats.total_electricity_paid  = 0.00
	playerstats.total_bills_paid = 0.00
	playerstats.highest_correct_judgement_streak = 0
	playerstats.highest_incorrect_judgement_streak = 0
	playerstats.highest_judgement_days_streak = 0
	
	# Bills
	bills.food_cost = 22.00
	bills.rent_cost = 250.00
	bills.electric_cost = 65.00
	bills.days_till_rent = 30
	bills.days_till_electric = 14
	bills.food_paid = false
	bills.rent_paid = false
	bills.electricity_paid = false
