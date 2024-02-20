class WireframesController < ApplicationController
  
  Place.destroy_all
  Entry.destroy_all

  mexico = Place.new
  mexico["name"] = "Mexico City"
  mexico.save
  
  charleston = Place.new
  charleston["name"] = "Charleston"
  charleston.save
  
  beijing = Place.new
  beijing["name"] = "Beijing"
  beijing.save
  
  amsterdam = Place.new
  amsterdam["name"] = "Amsterdam"
  amsterdam.save

  # entry = Entry.new
  # entry["title"] = "Ate tacos"
  # entry.save
  
  # entry = Entry.new
  # entry["description"] = "happy"
  # entry.save

  # entry = Entry.new
  # entry["posted_on"] = "2022-01-02"
  # entry.save

  # entry = Entry.new
  # entry["place_id"] = mexico["id"]
  # entry.save

  def index
    @fillings = Place.all 
    # ["Mexico City", "Charleston", "Beijing", "Amsterdam"]
  end

  def show
    @filling = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({ "place_id" => @filling["id"] })
  end

  def new

  end

  def create
    @filling = Place.new
    @filling["name"] = params["name"]
    # save place
    @filling.save
    # redirect user
    redirect_to "/wireframes"
  end

end
