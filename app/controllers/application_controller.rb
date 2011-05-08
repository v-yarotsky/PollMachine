class ApplicationController < ActionController::Base
  before_filter :user_session
  protect_from_forgery
  helper :all
  
  private
  
  def user_session
    if current_user
      session[:uuid] = current_user.uuid
    end
    UserSession.current = UserSession.new(session)
  end
  helper_method :user_session
  
  def sign_out
    UserSession.current.destroy
    super
  end
  
end
