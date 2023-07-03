class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      if session[:user_id].present?
        redirect_to root_path, notice: "User is already logged in!"
      else
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in successfully!"
      end
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
