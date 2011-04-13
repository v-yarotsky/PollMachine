class Answer < ActiveRecord::Base
  belongs_to :question
  
  def before_create()
    self.uuid = UserSession.current.uuid
  end
end
