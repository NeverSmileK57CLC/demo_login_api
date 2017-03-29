class Api::UsersController < ActionController::Base
  def create
    user = User.create email: params[:email], password: params[:password]
    if user.save
      render json: {
        data: {message: "Create user success", user: user},
        status: true,
      }
    else
      render json: {
        data: {message: "Can't create", errors: user.errors},
        status: false,
      }
    end
  end
end
