class LocationsController < ApplicationController
  def edit
  end
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to locations_path
  end

  def show
  end

  private

  def location_params
    params.require(:location).permit(:village, :mandal, :district, :state, :country)
  end

end
