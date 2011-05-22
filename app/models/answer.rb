class Answer < ActiveRecord::Base
  belongs_to :question
  validates_uniqueness_of :uuid, :scope => [:predefined_answer_id]
  
  def before_validation
    self.uuid = UserSession.current.uuid
  end
  
  def answered?
    predefined_answer_id.present?
  end
  
end
