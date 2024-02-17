class WireframesController < ApplicationController
  
  Place.destroy_all

  Place= ["Mexico City", "Charleston", "Beijing", "Amsterdam"]

  def index
    @fillings = Place 
    # ["Mexico City", "Charleston", "Beijing", "Amsterdam"]
  end

  def show
        # find a Company
    @fillings = Place.find_by({ "id" => params["id"] })
        # find Contacts for the Company
    @fillings = Entry.where({ "place_id" => @fillings["id"] })
        # render companies/show view with details about Company
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @fillings = Place.new

    # assign user-entered form data to Post's columns
    @post["author"] = params["author"]
    @post["body"] = params["body"]
    @post["imaage"] = params["imaage"]

    # save Post row
    @fillings.save

    # redirect user
    redirect_to "/wireframes"
  end

end
