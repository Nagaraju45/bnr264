class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all
  end
  def edit
  end

  def new
    @landmark = Landmark.new
  end

  def show
  end

  def create
    @landmark = Landmark.new(landmark_params)
    @landmark.save
    redirect_to landmark_path
  end

  def update
  end

  private

  def landmark_params
    params.require(:landmark).permit(:name, :age, :phone_no, :villae, :mandal, :district, :state, :country)
  end

end
# , :village, :mandal, :district, :state, :country