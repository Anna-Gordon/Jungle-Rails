class UsersController < ApplicationController
  def new
  end 

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.user_id
      flash[:success] = "Successfully Created User!"
      redirect_to '/users'
    else
      flash[:warning] = "Invalid Email or Password"
      redirect_to '/signup'
    end
  end

end
