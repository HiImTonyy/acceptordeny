extends Node2D

@export var menu_containers: VBoxContainer
@export var input_containers: VBoxContainer
@export var input_first_name: LineEdit
@export var input_last_name: LineEdit


func _on_new_game_button_down() -> void:
	menu_containers.visible = false
	input_containers.visible = true 


func _on_start_game_button_button_down() -> void:
	player.first_name = input_first_name.text
	player.last_name = input_last_name.text
	get_tree().change_scene_to_file("res://scenes/home.tscn")
	
