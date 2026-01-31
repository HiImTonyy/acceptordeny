extends Node

var first_name : String = "Huge"
var last_name : String = "Load"
var gender : String = "Male"
var age : int = 55
var birth_month : int = 01
var birth_day : int = 30
var birth_year : int = 30
var street_number : int = 81
var street_name : String = "Marshall"
var street_direction : String = "North"

var id_first_letter : String = "A"
var id_second_letter : String = "B"
var id_number : int = 123456789
var id_expiration_month : int = 04
var id_expiration_day : int = 30
var id_expiration_year : int = 1940

var illegal_chance : int = 30
var is_illegal : bool = false
var selected_error : String
var selected_index : int = -0

var cloned_first_name : String
var cloned_last_name : String
var cloned_gender : String
var cloned_age : int
var cloned_birth_month : int
var cloned_birth_day : int
var cloned_birth_year : int
var cloned_street_number : int
var cloned_street_name : String
var cloned_street_direction : String
var cloned_id_first_letter
var cloned_id_second_letter
var cloned_id_number
var cloned_id_expiration_month : int
var cloned_id_expiration_day : int
var cloned_id_expiration_year : int

var letter_list = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

var first_name_list = [
	{"name": "Anthony", "gender": "Male"},
	{"name": "Alison", "gender": "Female"},
	{"name": "Baily", "gender": "Male"},
	{"name": "Britta", "gender": "Female"},
	{"name": "Chris", "gender": "Male"},
	{"name": "Christina", "gender": "Female"},
	{"name": "Daniel", "gender": "Male"},
	{"name": "Diane", "gender": "Female"},
	{"name": "Ethan", "gender": "Male"},
	{"name": "Evelynn", "gender": "Female"},
	{"name": "Frank", "gender": "Male"},
	{"name": "Fiona", "gender": "Female"},
	{"name": "Gilbert", "gender": "Male"},
	{"name": "Grace", "gender": "Female"},
	{"name": "Henry", "gender": "Male"},
	{"name": "Heather", "gender": "Female"},
	{"name": "Ian", "gender": "Male"},
	{"name": "Izzy", "gender": "Female"},
	{"name": "Jack", "gender": "Male"},
	{"name": "Jackie", "gender": "Female"},
	{"name": "Kevin", "gender": "Male"},
	{"name": "Kim", "gender": "Female"},
	{"name": "Liam", "gender": "Male"},
	{"name": "Lucy", "gender": "Female"},
	{"name": "Matt", "gender": "Male"},
	{"name": "Malissa", "gender": "Female"},
	{"name": "Nick", "gender": "Male"},
	{"name": "Nicole", "gender": "Female"},
	{"name": "Owen", "gender": "Male"},
	{"name": "Olivia", "gender": "Female"},
	{"name": "Patrick", "gender": "Male"},
	{"name": "Patrica", "gender": "Female"},
	{"name": "Quinlin", "gender": "Male"},
	{"name": "Quintessa", "gender": "Female"},
	{"name": "Roger", "gender": "Male"},
	{"name": "Rose", "gender": "Female"},
	{"name": "Stan", "gender": "Male"},
	{"name": "Samantha", "gender": "Female"},
	{"name": "Tyler", "gender": "Male"},
	{"name": "Tessa", "gender": "Female"},
	{"name": "Usher", "gender": "Male"},
	{"name": "Umi", "gender": "Female"},
	{"name": "Vincent", "gender": "Male"},
	{"name": "Victoria", "gender": "Female"},
	{"name": "William", "gender": "Male"},
	{"name": "Wendy", "gender": "Female"},
	{"name": "Xan", "gender": "Male"},
	{"name": "Xena", "gender": "Female"},
	{"name": "Yuki", "gender": "Male"},
	{"name": "Yuna", "gender": "Female"},
	{"name": "Zach", "gender": "Male"},
	{"name": "Zoe", "gender": "Female"},
]

var last_name_list = [
	"Anderson", "Allen", "Adams", "Armstrong", "Butler", "Bronson", "Callaway", "Campbell", "Croft", "Crowley",
	"Craig", "Davidson", "Day", "Dawson", "Dennis", "Daniels", "Diaz", "Evans", "Edwards", "Ellis",
	"Eaton", "Foster", "Freeman", "Fisher", "Ford", "Fields", "Fraizer", "Ferguson", "Garcia", "Gordon",
	"Green", "Griffin", "Gomez", "Graham", "Garrett", "Gibson", "Harris", "Hall", "Hill", "Howard",
	"Harper", "Hunt", "Henderson", "Hamilton", "Hayes", "Irwin", "Ivey", "Irvin", "Isaac", "Iverson",
	"Johnson", "Jackson", "Jenkins", "Jordan", "Jacobs", "Jones", "Jefferson", "Joyce", "King", "Kennedy",
	"Kramer", "Khan", "Lee", "Lopez", "Long", "Larson", "Lucas", "Lane", "Lawrence", "Little",
	"Lambert", "Lowe", "Masterson", "Miller", "Mullins", "Mendoza", "Malone", "Murphy", "Nix", "Nelson",
	"Nicholson", "Neal", "Newman", "Norris", "Newton", "Norman", "Norton", "Nash", "Noble", "Owens",
	"Olson", "Ortega", "Oliver", "Osborne", "O'Brien", "O'Connor", "Peterson", "Philips", "Parker", "Price",
	"Powell", "Perry", "Patterson", "Porter", "Palmer", "Payne", "Quinn", "Queen", "Quick", "Rodriguez",
	"Robinson", "Rose", "Richardson", "Ramierez", "Roberts", "Rivera", "Rogers", "Reyes", "Ross", "Smith",
	"Sanchez", "Scott", "Stewart", "Sanderson", "Sanders", "Sullivan", "Simmons", "Stevens", "Simpson", "Silva",
	"Shaw", "Snyder", "Stone", "Salazar", "Stephens", "Taylor", "Thatch", "Thomas", "Thompson", "Torres",
	"Turner", "Tucker", "Terry", "Thorton", "Tate", "Taint", "Underwood", "Ulmer", "Usher", "Upshaw",
	"Vargas", "Vaughn", "Vega", "Van", "Vincent", "Vance", "Williamson", "Williams", "Wilson", "White",
	"Walker", "Wright", "Ward", "Watson", "Watts", "Xavier", "Young", "Yang", "Yates", "Youngblood",
	"Zimmerman", "Zimmer"
	]
	
var error_list = [
	"error_first_name",
	"error_last_name",
	"error_gender",
	"error_birth_month",
	"error_birth_day",
	"error_birth_year",
	"error_id_first_letter",
	"error_id_second_letter",
	"error_id_number",
	"error_id_expiration"
]

var street_name_list = [
	"Victoria", "Sykes", "Parker", "Johnson", "Abbey", "Route", "Jefferson", "Dick", "Albion", "Albert",
	"Pine", "Park", "Jackson", "Spruce", "Birch", "Willow", "Sunset", "Maple", "Dogwood", "Redwood",
	"Hillside", "Ridge", "Evergreen", "Holly", "Bay", "Williams", "Lake", "Lakeview", "Lincoln", "Hickory",
	"Washington", "Shore", "Hamlock", "Cottonwood", "Mountain View", "Elm", "Heights", "Hollow", "Lock", "Row",
	"Everglade", "Eaton", "Chester", "Knightsbridge", "Stein", "Wellington", "Paramore", "Laygon", "Halkin", "Graham"
]

var street_direction_list = [
	"North",
	"South",
	"East",
	"West"
]

func generate_person():
	is_illegal = false
	var roll : int
	
	selected_index = randi_range(0, first_name_list.size() - 1)
	first_name = first_name_list[selected_index]["name"]
	gender = first_name_list[selected_index]["gender"]
	last_name = last_name_list.pick_random()
	birth_month = randi_range(1, 12)
	birth_day = randi_range(1, 30)
	birth_year = world.starting_year - randi_range(18, 75)
	
	street_number = randi_range(22, 426)
	street_name = street_name_list.pick_random()
	street_direction = street_direction_list.pick_random()
	
	id_first_letter = letter_list.pick_random()
	id_second_letter = letter_list.pick_random()
	id_number = randi_range(1000000, 9999999 )
	set_id_expiration_date()
	
	cloned_first_name = first_name
	cloned_last_name = last_name
	cloned_gender = gender
	cloned_birth_month = birth_month
	cloned_birth_day = birth_day
	cloned_birth_year = birth_year
	cloned_street_number = street_number
	cloned_street_name = street_name
	cloned_street_direction = street_direction
	cloned_id_first_letter = id_first_letter
	cloned_id_second_letter = id_second_letter
	cloned_id_number = id_number
	cloned_id_expiration_month = id_expiration_month
	cloned_id_expiration_day = id_expiration_day
	cloned_id_expiration_year = id_expiration_year
	
	roll = randi_range(1, 100)
	selected_error = "not illegal"
	if roll <= illegal_chance:
		is_illegal = true
		select_error()
	else:
		print_test()
		
	
func select_error():
	selected_error = error_list.pick_random()
	
	match selected_error:
		"error_first_name":
			cloned_first_name = remove_letter(cloned_first_name)
		"error_last_name":
			cloned_last_name = remove_letter(cloned_last_name)
		"error_gender":
			if gender == "Male":
				cloned_gender = "Female"
			else:
				cloned_gender = "Male"
		"error_birth_month":
			change_birthday()
		"error_birth_day":
			change_birthday()
		"error_birth_year":
			change_birthday()
		"error_id_first_letter":
			pass
			# id_first_letter = change_id_letter()
		"error_id_second_letter":
			pass
			# id_second_letter = change_id_letter()
		"error_id_number":
			while cloned_id_number == id_number:
				cloned_id_number = randi_range(id_number, id_number + 80000)
		"error_id_expiration":
			
			# If Janurary 1st, minus 1 year. else if 1st day of any month, minus 1 month.
			if world.current_month == 1 and world.current_day == 1:
				id_expiration_year -= 1
			elif world.current_day == 1:
				id_expiration_month -= 1
			
			#TODO: Butter my fingers Batman, its a hack of a code! FIX IT!
			
			if id_expiration_month != world.current_month and id_expiration_year != world.current_year :
				id_expiration_month = world.current_month
				id_expiration_year = world.current_year
				
			while id_expiration_day >= world.current_day and id_expiration_month >= world.current_month and id_expiration_year > world.current_year:
				id_expiration_day = randi_range(1, 29)
				id_expiration_month = randi_range(1, 12)
					
			cloned_id_expiration_month = id_expiration_month
			cloned_id_expiration_day = id_expiration_day
			cloned_id_expiration_year = id_expiration_year
			
	print_test()
			
func print_test():
	print("--------------------------------------")
	print(world.current_date)
	print("Full Name: " + first_name + " " + last_name)
	print("Gender: " + gender)
	print("birthdate: " + str(birth_month) + "/" + str(birth_day) + "/" + str(birth_year))
	print("Address: " + str(street_number) + " " + street_name + " " + street_direction)
	print("ID Number: " + id_first_letter + id_second_letter + str(id_number))
	print("ID Expiration date: " + str(id_expiration_month) + "/" + str(id_expiration_day) + "/" + str(id_expiration_year)) 
	print("")
	print("Cloned Full Name: " + cloned_first_name + " " + cloned_last_name)
	print("Cloned Gender: " + cloned_gender)
	print("Cloned Birthdate: " + str(cloned_birth_month) + "/" + str(cloned_birth_day) + "/" + str(cloned_birth_year))
	print("Cloned Address: " + str(cloned_street_number) + " " + cloned_street_name + " " + cloned_street_direction)
	print("Cloned ID Number: " + cloned_id_first_letter + cloned_id_second_letter + str(cloned_id_number))
	print("Cloned ID Expiration Date: " + str(cloned_id_expiration_month) + "/" + str(cloned_id_expiration_day) + "/" + str(cloned_id_expiration_year))
	print("Is an Illegal: " + str(is_illegal))
	print("Selected Error: " + selected_error)
	
func remove_letter(text : String):
	var letter_selected = randi_range(0, text.length() - 1)
	text = text.erase(letter_selected, 1)
	return text

func change_id_letter():
	pass
	
func change_birthday():
	var roll : int 
	var date : int
	
	while roll == date:
		match selected_error:
			"error_birth_month":
				roll = randi_range(1, 12)
				date = cloned_birth_month
				cloned_birth_month = roll
			"error_birth_day":
				roll = randi_range(1, 30)
				date = cloned_birth_day
				cloned_birth_day = roll
			"error_birth_year":
				roll = randi_range(birth_year - 3, birth_year + 3)
				date = cloned_birth_year
				cloned_birth_year = roll

func set_id_expiration_date():
	var id_expiration_set = false
	
	while id_expiration_set == false:
		id_expiration_month = randi_range(1, 12)
		id_expiration_day = randi_range(1, 30)
		id_expiration_year = randi_range(world.current_year, world.current_year + 3)
		
		# Makes sure that the expiration date is never lower than current date.
		if  id_expiration_year >= world.current_year and id_expiration_month >= world.current_month and id_expiration_day > world.current_day:
			id_expiration_set = true
		elif id_expiration_year >= world.current_year and id_expiration_month > world.current_month:
			id_expiration_set = true
		elif  id_expiration_year > world.current_year:
			id_expiration_set = true 
		
