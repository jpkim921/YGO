class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.find_by(email: params[:user][:email])

    if @user

      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    if session[:user_id]
      session.delete(:user_id)
      redirect_to root_path
    end
  end
end
