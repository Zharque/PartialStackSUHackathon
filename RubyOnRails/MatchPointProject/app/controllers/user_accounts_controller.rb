class UserAccountsController < ApplicationController
  def new
    @user_account = UserAccount.new
  end
  
  def create
    @user_account = UserAccount.new(user_account_params)
  
    if @user_account.save
      redirect_to @user_account, notice: "Account created!" 
    else
      render :new
    end
  end
  
  private
  
  def user_account_params
    params.require(:user_account).permit(:name, :email, :birthdate, :address, :skills, :expertise, :user_type)
  end
  
end
