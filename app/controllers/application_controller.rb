class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in
  helper_method :current_user
  helper_method :admin_user
  
  def logged_in
    if session[:user_id].nil?
      redirect_to "/"
    end
  end

  def current_user
    user = User.find_by(id: session[:user_id])
  end

  def admin_user
    if !current_user.admin
      redirect_to attractions_path
    end
  end
  
end
