# Wipe the tables clean
Places.destroy_all
Entries.destroy_all

# Create Places

mexico_city = Places.new
mexico_city["name"] = "Mexico City"
mexico_city.save

charleston = Places.new
charleston["name"] = "Charleston"
charleston.save

beijing = Places.new
beijing["name"] = "Beijing"
beijing.save

amsterdam = Places.new
amsterdam["name"] = "Amsterdam"
amsterdam.save

puts "There are #{Places.all.count} places."