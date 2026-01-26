extends Node

signal decrease_bill_date

var current_month : int = 8
var current_day : int = 8
var current_year : int = 1998
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
	
func popup_message(message: String, color: Color, node: Node):
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
	label.position = screensize / 2 - label.get_size() / 2
	
	
	label.modulate.a = 1
	tween.tween_property(label, "modulate:a", 0, 0.1)
	tween.tween_property(label, "modulate:a", 1, 0.3)
	tween.tween_property(label, "modulate:a", 0, 0.1)
	tween.tween_property(label, "modulate:a", 1, 0.3)
	tween.tween_property(label, "modulate:a", 0, 2.5)
	await tween.finished
	
