class UsersController < ApplicationController
  # respond_to :html, :json
  def new
    @users = User.new
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find(user_params[:id])
  end

  def update
    @user = User.find(user_params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

  def create
    @user = User.new(user_params[:user])
    if @user.save
      redirect_to @user, notice: "Succeefully created user."
    else 
    render :new
    end
  end
  def destroy
    @user = User.find(user_params[:id])
    @user.destroy
    redirect_to users_url, notice: "Succeefully destroyed user." 
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :gender)
  end
end
