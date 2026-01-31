extends Node

signal decrease_bill_date

var starting_month : int = 8
var starting_day : int = 18
var starting_year : int = 1998
var current_month : int = starting_month
var current_day : int = starting_day
var current_year : int = starting_year
var current_date: String = "WINDS-A BLOWIN', FAT MAN ROLLIN'"
var popup_message_finished : bool = true

func _ready() -> void:
	format_current_date()

func format_current_date():
	current_date = "Current Date: " + str("%02d" % current_month) + "/" + str("%02d" % current_day) + "/" + str(current_year)
	
func next_day():
	if current_day <= 30:
		current_day += 1
	if current_day > 30:
		current_month += 1
		current_day = 1
	if current_month > 12:
		current_month = 1
		current_year += 1
	
	decrease_bill_date.emit()
	format_current_date()
	
func popup_message(message: String, color: Color, node: Node, position: String):
	var label : Label
	var tween = create_tween()
	
	tween.bind_node(self)
	
	label = Label.new()
	label.text = message
	label.add_theme_color_override("font_color", color)
	label.add_theme_font_size_override("font_size", 50)
	node.add_child(label)
	label.visible = true
	
	var screensize = get_viewport().get_visible_rect().size
	var labelsize = label.get_size()
	
	match position:
		"center":
			label.position = screensize / 2 - labelsize / 2
		"center_top":
			label.position = Vector2((screensize.x - labelsize.x) / 2, 0)
		"center_bottom":
			label.position = Vector2((screensize.x - labelsize.x) / 2, screensize.y - labelsize.y)
		"center_left":
			label.position = Vector2(0, (screensize.y - labelsize.y) / 2)
		"top_left":
			label.position = Vector2(0, 0)
		"bottom_left":
			label.position = Vector2(0, screensize.y - labelsize.y)
		"center_right":
			label.position = Vector2(screensize.x - labelsize.x, (screensize.y - labelsize.y) / 2)
		"top_right":
			label.position = Vector2(screensize.x - labelsize.x, 0)
		"bottom_right":
			label.position = Vector2(screensize.x - labelsize.x, screensize.y - labelsize.y)
	
	
	label.modulate.a = 1
	tween.tween_property(label, "modulate:a", 0, 0.1)
	tween.tween_property(label, "modulate:a", 1, 0.3)
	tween.tween_property(label, "modulate:a", 0, 0.1)
	tween.tween_property(label, "modulate:a", 1, 0.3)
	tween.tween_property(label, "modulate:a", 0, 2.5)
	await tween.finished
	
