class ApplicationController < ActionController::Base
  include Authorization

  protect_from_forgery

  helper :all
  
  helper_method :current_user
  
  before_filter { |c| Authorization.current_user = c.current_user }
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  # private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
