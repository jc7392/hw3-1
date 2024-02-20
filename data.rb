Place.destroy_all
Entry.destroy_all

place = Place.new
place["name"] = "Mexico City"
place.save

place = Place.new
place["name"] = "Charleston"
place.save

place = Place.new
place["name"] = "Beijing"
place.save

place = Place.new
place["name"] = "Amsterdam"
place.save