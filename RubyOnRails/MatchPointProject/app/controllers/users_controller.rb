class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

  if @user.save
    redirect_to @user, notice: "Account created!" 
  else
    render :new
  end

  privatera
  def user_params
    params.require(:user).permit(:name, :email, :password, :birthdate, :address, :skills, :expertise, :user_type)
  end
end
