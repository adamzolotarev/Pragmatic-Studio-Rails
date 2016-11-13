class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_flash_types(:danger)

  private

  def require_signin
    return if current_user
    session[:intended_url] = request.url
    redirect_to new_session_url, alert: 'Please sign in first!'
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    current_user == user
  end

  def require_admin
    redirect_to root_url, alert: 'Unauthorized access!' unless current_user_admin?
  end

  def current_user_admin?
    current_user && current_user.admin?
  end

  helper_method :current_user, :current_user?, :require_admin, :current_user_admin?
end
