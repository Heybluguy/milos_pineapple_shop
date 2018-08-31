class RegistrationsController < Devise::RegistrationsController

private

  def sign_up_parmas
    parmas.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    parmas.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end