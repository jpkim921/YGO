class StoresController < ApplicationController
  def welcome
  end
  
  private

  def logged_in?
    !!current_user
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user
    if !logged_in?
      redirect_to root_path
    end
  end
end
