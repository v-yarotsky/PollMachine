class Answer < ActiveRecord::Base
  belongs_to :question
  
  def before_create()
    self.uuid = UserSession.current.uuid
  end
  
  def answered?
    predefined_answer_id.present? || custom_answer_text.present?
  end
  
end
