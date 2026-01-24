extends Node2D

@export var menu_containers: VBoxContainer
@export var input_containers: VBoxContainer
@export var input_first_name: LineEdit
@export var input_last_name: LineEdit


func _on_new_game_button_down() -> void:
	menu_containers.visible = false
	input_containers.visible = true 


func _on_start_game_button_button_down() -> void:
	if input_first_name.text and input_last_name.text != "":
		player.first_name = input_first_name.text
		player.last_name = input_last_name.text
		print("FIRST" + str(player.cash))
		get_tree().change_scene_to_file("res://scenes/home.tscn")
	else:
		$MenuUI/InputContainers/LabelInputTitle.text = "NEITHER FIRST NAME AND LAST NAME CAN BE BLANK!"
		
		

func set_player_stats():
	player.cash = 50.00
	# player.rank = player.rank_state.keys()[player.set_current_rank_state]
	player.daily_wage = 50
	player.went_to_work = false
	# player.set_hunger_state = player.hunger_state.Alright
	# player.hunger.hunger_state.keys()[player.set_current_hunger_state]
	player.times_ate_today = 0
	player.total_food_items = 0
	
