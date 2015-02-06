class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by(session_token: session[:session_token])
  end

  def require_login
    redirect_to new_user_url unless current_user
  end

  def login!(user)
    session[:session_token] = user.reset_session_token!
  end

  def logout!(user)
    user.reset_session_token!
    session[:session_token] = nil
  end
end
