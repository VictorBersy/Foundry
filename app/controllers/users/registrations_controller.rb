class Users::RegistrationsController < Devise::RegistrationsController
  protected

  def sign_up_params
    params.require(:user).permit(:username, :email, :password)
  end

  def after_sign_up_path_for(resource)
    game_getting_started_welcome_path
  end
end
