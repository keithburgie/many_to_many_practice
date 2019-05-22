require_relative '../config/environment.rb'

# create your variables and/or write any tests here

keith = Tourist.new("Keith")
ethan = Tourist.new("Ethan")
joseph = Tourist.new("Joseph")

white_house = Landmark.new("White House", "Washington, DC")
washington_monument = Landmark.new("Washington Monument", "Washington, DC")
statue_of_liberty = Landmark.new("Status of Liberty", "New York City")
ellis_island = Landmark.new("Ellis Island", "New York City")
gateway_arch = Landmark.new("Gateway Arch", "St. Louis")
bunker_hill = Landmark.new("Bunker Hill Monument", "Boston")
liberty_bell = Landmark.new("Liberty Bell", "Philadelphia")
golden_gate_bridge = Landmark.new("Golden Gate Bridge", "San Francisco")

trip1 = Trip.new(keith, white_house)
trip2 = Trip.new(keith, washington_monument)
trip3 = Trip.new(keith, statue_of_liberty)
trip4 = Trip.new(ethan, statue_of_liberty)
trip5 = Trip.new(ethan, ellis_island)
trip6 = Trip.new(ethan, gateway_arch)
trip7 = Trip.new(joseph, gateway_arch)
trip8 = Trip.new(joseph, bunker_hill)
trip9 = Trip.new(joseph, liberty_bell)
trip10 = Trip.new(joseph, golden_gate_bridge)

#Pry.start
#binding.pry

#yes
# puts keith.trips

#yes
# puts keith.landmarks

#yes
# keith.visit_landmark(liberty_bell)

#yes
# Tourist.find_by_name("Keith")

#yes 
# puts statue_of_liberty.trips

#yes 
# puts gateway_arch.tourists

#yes 
# puts Landmark.all

#yes 
# puts Landmark.find_by_city("New York City")

"hi"