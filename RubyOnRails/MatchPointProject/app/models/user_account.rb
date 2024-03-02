class UserAccount < ApplicationRecord
  def new
    @user_account = UserAccount.new
  end

  def create
    @user_account = UserAccount.new(user_account_params)

    if @user_account.save
      # Handle successful creation (e.g., redirect)
      redirect_to @user_account, notice: "Account created!"
    else
      # Handle errors (e.g., re-render the form)
      render :new
    end
  end

  private

  def user_account_params
    params.require(:user_account).permit(:name, :email, :birthdate, :address, :skills, :expertise, :user_type, :profile_image) # Add profile_image if it's in your model
  end
end
