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

var first_id_letter : String = "A"
var second_id_letter : String = "B"
var id_number : int = 123456789
var id_expiration_month : int = 04
var id_expiration_day : int = 30
var id_expiration_year : int = 1940

var is_illegal : bool = false
var selected_index : int = -0

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
	
	first_id_letter = letter_list.pick_random()
	second_id_letter = letter_list.pick_random()
	id_number = randi_range(1000000, 9999999 )
	set_id_expiration_date()
	print("--------------------------------------")
	print(world.current_date)
	print("Full Name: " + first_name + " " + last_name)
	print("Gender: " + gender)
	print("birthdate: " + str(birth_month) + "/" + str(birth_day) + "/" + str(birth_year))
	print("Address: " + str(street_number) + " " + street_name + " " + street_direction)
	print("ID Number: " + first_id_letter + second_id_letter + str(id_number))
	print("ID Expiration date: " + str(id_expiration_month) + "/" + str(id_expiration_day) + "/" + str(id_expiration_year)) 
	
	
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
		
