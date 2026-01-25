extends Node

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

func decrease_bill_date():
	days_till_electric -= 1
	days_till_rent -= 1
	
	if rent_paid == true and days_till_rent <= 0:
		days_till_rent = 30
	if electricity_paid == true and days_till_electric <= 0:
		days_till_electric = 15
