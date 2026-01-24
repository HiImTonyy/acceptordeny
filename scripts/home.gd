extends Node2D

@export var label_player_name : Label
@export var label_player_cash : Label
@export var label_hunger_level : Label
@export var label_rank : Label

func _ready():
	update_ui()
	#label_player_name.text = "Name: " + player.first_name + " " + player.last_name
	#label_player_cash.text = "Balance: " + "$" + str(snapped(player.cash, 0.01))


func _on_button_button_down() -> void:
	player.cash += 50.55
	player.total_correct_judgements += 1
	update_ui()
	
	
func update_ui():
	label_player_cash.text = "Balance: " + "$" + str(snapped(player.cash, 0.01))
	$Control/StatsUI/VBoxContainer/VBoxContainer/LabelStatsTotalCorrectJudgements.text = "Total Correct Judgement: " + str(player.total_correct_judgements)
	pass
