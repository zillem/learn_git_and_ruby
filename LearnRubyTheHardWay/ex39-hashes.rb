# a mapping of state to abbreviation
states = {
  "AL" => "Alabama",
  "AK" => "Alaska",
  "AZ" => "Arizona",
  "AR" => "Arkansas",
  "CA" => "California",
  "CO" => "Colorado",
  "CT" => "Connecticut",
  "DE" => "Delaware",
  "FL" => "Florida",
  "GA" => "Georgia",
  "HI" => "Hawaii",
  "ID" => "Idaho",
  "IL" => "Illinois",
  "IN" => "Indiana",
  "IA" => "Iowa",
  "KS" => "Kansas",
  "KY" => "Kentucky",
  "LA" => "Louisiana",
  "ME" => "Maine",
  "MD" => "Maryland",
  "MA" => "Massachusetts",
  "MI" => "Michigan",
  "MN" => "Minnesota",
  "MS" => "Mississippi",
  "MO" => "Missouri",
  "MT" => "Montana",
  "NE" => "Nebraska",
  "NV" => "Nevada",
  "NH" => "New Hampshire",
  "NJ" => "New Jersey",
  "NM" => "New Mexico",
  "NY" => "New York",
  "NC" => "North Carolina",
  "ND" => "North Dakota",
  "OH" => "Ohio",
  "OK" => "Oklahoma",
  "OR" => "Oregon",
  "PA" => "Pennsylvania",
  "RI" => "Rhode Island",
  "SC" => "South Carolina",
  "SD" => "South Dakota",
  "TN" => "Tennessee",
  "TX" => "Texas",
  "UT" => "Utah",
  "VT" => "Vermont",
  "VA" => "Virginia",
  "WA" => "Washington",
  "WV" => "West Virginia",
  "WI" => "Wisconsin",
  "WY" => "Wyoming"
}

cities = {
  "AL" => "Montgomery",
  "AK" => "Juneau",
  "AZ" => "Phoenix",
  "AR" => "Little Rock",
  "CA" => "Sacramento",
  "CO" => "Denver",
  "CT" => "Hartford",
  "DE" => "Dover",
  "FL" => "Tallahassee",
  "GA" => "Atlanta",
  "HI" => "Honolulu",
  "ID" => "Boise",
  "IL" => "Springfield",
  "IN" => "Indianapolis",
  "IA" => "Des Moines",
  "KS" => "Topeka",
  "KY" => "Frankfort",
  "LA" => "Baton Rouge",
  "ME" => "Agusta",
  "MD" => "Annapolis",
  "MA" => "Boston",
  "MI" => "Lansing",
  "MN" => "Saint Paul",
  "MS" => "Jackson",
  "MO" => "Jefferson City",
  "MT" => "Helena",
  "NE" => "Lincoln",
  "NV" => "Carcon City",
  "NH" => "Concord",
  "NJ" => "Trenton",
  "NM" => "Santa Fe",
  "NY" => "Albany",
  "NC" => "Raleigh",
  "ND" => "Bismarck",
  "OH" => "Columbus",
  "OK" => "Oklahoma City",
  "OR" => "Salem",
  "PA" => "Harrisburg",
  "RI" => "Providence",
  "SC" => "Columbia",
  "SD" => "Pierre",
  "TN" => "Nashville",
  "TX" => "Austin",
  "UT" => "Salt Lake City",
  "VT" => "Montpelier",
  "VA" => "Richmond",
  "WA" => "Olympia",
  "WV" => "Charleston",
  "WI" => "Madison",
  "WY" => "Cheyenne"
}

# add some more cities
#cities[NY] = 'New York'
#cities[OR] = 'Portla'/nd'

#puts some cities
puts '-' * 10
#puts "NY is for #{states["NY"]} and it's captial is #{cities["NY"]}."
#puts "OR is for #{states["OR"]} and it's captial is #{cities["OR"]}."

# print all states with capitals
puts '#' * 10
states.each do |abbrev, state|
  city = cities[abbrev]
  puts "#{abbrev} is for #{state}.      \t It's capital is #{city}"
end

states.default = nil
puts "Try for yourself."
print "What abbreviation do you want to look up?   > "
search = $stdin.gets.chomp.upcase!
unless states[search] == nil
  puts "\n#{search} is for #{states[search]} and it's captial is #{cities[search]}."
else
  puts "Input #{search} not understood."
end
