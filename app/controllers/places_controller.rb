class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params["place"])
    @place.save
    redirect_to "/places"
  end

  def edit
    @place = Place.find_by({ "id" => params["id"] })
  end

  def update
    # find a Company
    @company = Company.find_by({ "id" => params["id"] })

    # assign user-entered form data to Company's columns
    @company["name"] = params["name"]
    @company["city"] = params["city"]
    @company["state"] = params["state"]

    # save Company row
    @company.save

    # redirect user
    redirect_to "/companies"
  end

  def destroy
    # find a Company
    @company = Company.find_by({ "id" => params["id"] })

    # destroy Company row
    @company.destroy

    # redirect user
    redirect_to "/companies"
  end

end
