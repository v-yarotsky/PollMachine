class ApplicationController < ActionController::Base
  before_filter :user_session
  protect_from_forgery
  helper :all
  
  private
  
  def user_session
    UserSession.current = UserSession.new(session)
  end
  helper_method :user_session
  
end
