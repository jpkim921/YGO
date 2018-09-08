class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end
  
  def logged_in?
#     session[:user_id]
    
    !!current_user
  end
  
  def current_user
#     User.find(session[:user_id])
#     since we will be calling this method a lot, insead of the above we will use the below.since
    @user ||= User.find(session[:user_id]) if session[:user_id]
#     the above lines says (the first time around), @user = nil because it's never been set in the context of this current request cycle.(the first time). and it will assign it to User.find(session[:user_id]), and NOW @user = User.find(session[:user_id]), (second time and on.)

  end
  helper_method :current_user
#   helper method above is so that we can use the method in view
  
  
#   private

#     def logged_in?
#       !!current_user
#     end

#     def current_user
#       @user ||= User.find(session[:user_id]) if session[:user_id]
#     end

#     def authenticate_user
#       if !logged_in?
#         redirect_to root_path
#       end
#     end
 
end
