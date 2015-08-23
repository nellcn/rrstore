class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      redirect_to user 
    else
      redirect_to signin_path, error: "Invalid email/password!"
    end
  end

  def destroy
  end
end
