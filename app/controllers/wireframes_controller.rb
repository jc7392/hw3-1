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
    @filling = Place.find_by(name: params["name"])
    @entries = Entry.where({ "place_id" => @filling["id"] })
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @fillings = Place.new

    # assign user-entered form data to Post's columns
    @fillings["name"] = params["name"]

    # save Post row
    @fillings.save

    # redirect user
    redirect_to "/wireframes"
  end

end
