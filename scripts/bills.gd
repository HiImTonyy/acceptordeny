extends Node

signal not_enough_cash
signal enough_cash
signal stats_increase(stat : String)
signal disable_button(button : String, option : bool)

var food_cost : float = 22.00
var rent_cost : float = 250.00
var electric_cost : float = 65.00
var days_till_rent : int = 30
var days_till_electric : int = 14
var food_paid : bool = false
var rent_paid : bool = false
var electricity_paid : bool = false


func _ready() -> void:
	world.decrease_bill_date.connect(decrease_bill_date)
	player.paying_bill.connect(pay_bill)

func decrease_bill_date():
	days_till_electric -= 1
	days_till_rent -= 1
	
	if rent_paid == true and days_till_rent <= 0:
		days_till_rent = 30
		rent_paid = false
		disable_button.emit("rent", false)
	if electricity_paid == true and days_till_electric <= 0:
		electricity_paid = false
		days_till_electric = 15
		disable_button.emit("electric", false)
		
func pay_bill(bill : String):
	match bill:
		"rent":
			if player.cash < rent_cost:
				not_enough_cash.emit()
			else:
				player.decrease_cash(rent_cost)
				rent_paid = true
				enough_cash.emit()
				stats_increase.emit("rent")
				disable_button.emit("rent", true)
		"electric":
			if player.cash < electric_cost:
				not_enough_cash.emit()
			else:
				player.decrease_cash(electric_cost)
				electricity_paid = true
				enough_cash.emit()
				stats_increase.emit("electric")
				disable_button.emit("electric", true)
