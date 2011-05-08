class UserSession
  def initialize(session)
    @session = session
    @session[:uuid] ||= UUIDTools::UUID.timestamp_create.to_s
    Rails.logger.debug uuid
  end
  
  def uuid
    @session[:uuid]
  end
  
  def self.current
    Thread.current[:user_session]
  end
  
  def self.current=(value)
    Thread.current[:user_session] = value
  end
  
  def destroy
    @session[:uuid] = nil
  end
  
end
