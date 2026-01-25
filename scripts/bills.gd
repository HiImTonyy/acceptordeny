extends Node

signal not_enough_cash
signal enough_cash

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
	player.paying_rent_bill.connect(pay_rent_bill)
	player.paying_electric_bill.connect(pay_electric_bill)

func decrease_bill_date():
	days_till_electric -= 1
	days_till_rent -= 1
	
	if rent_paid == true and days_till_rent <= 0:
		days_till_rent = 30
		rent_paid = false
	if electricity_paid == true and days_till_electric <= 0:
		electricity_paid = false
		days_till_electric = 15

func pay_rent_bill():
	if player.cash < rent_cost:
		not_enough_cash.emit()
	else:
		player.cash -= rent_cost
		rent_paid = true
		playerstats.total_rent_paid += rent_cost
		playerstats.total_bills_paid += rent_cost
		enough_cash.emit()
		
func pay_electric_bill():
	if player.cash < electric_cost:
		not_enough_cash.emit()
	else:
		player.cash -= electric_cost
		electricity_paid = true
		playerstats.total_electricity_paid += electric_cost
		playerstats.total_bills_paid += electric_cost
		enough_cash.emit()
