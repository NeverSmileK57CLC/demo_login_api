class Api::SessionsController < ActionController::Base
  include Devise::Controllers::SignInOut

  def create
    user = User.where("lower(email) = ?", params[:email].downcase).first
    if user && user.valid_password?(params[:password])
      sign_in "user", user
      render json: {
        data: {message: "Login success", user: current_user},
        status: true,
      }
    else
      render json: {
        data: "Can't login",
        status: false,
      }
    end
  end
end
