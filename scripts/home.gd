extends Node2D

@export var label_player_name : Label
@export var label_player_cash : Label
@export var label_hunger_level : Label

func _ready():
	label_player_name.text = "Name: " + player.first_name + " " + player.last_name
	label_player_cash.text = "Balance: " + "$" + str(snapped(player.cash, 0.01))
	label_hunger_level.text = "Hunger Level: " + player.current_hunger_level
