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
	player.set_newgame_variables()
	playerstats.set_newgame_variables()
	bills.set_newgame_variables()
