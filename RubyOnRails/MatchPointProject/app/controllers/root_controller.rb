class RootController < ApplicationController
  def signup
    @account = UserAccount.new
    @account.name = params[:name]
    @account.email = params[:email]
    @account.password = params[:password]
    # @account.birthdate = params[:birthdate]
    @account.address = params[:address]
    @account.skills = params[:skills]
    @account.expertise = params[:expertise] 
    @account.user_type = params[:user_type]
   
    @account.save
   
  end
  def signupaccount
    @account = Account.new
    @account.name = params[:name]
    @account.address = params[:address]
    @account.password = params[:password]
    @account.user_type = params[:user_type]
    @account.field = params[:field]
    
    if @account.save
      redirect_to login_path
    end
  end
end
