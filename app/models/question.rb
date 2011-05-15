class Question < ActiveRecord::Base
  belongs_to :poll
  has_many :predefined_answers, :dependent => :destroy
  has_many :answers, :dependent => :destroy

  scope :with_answers, includes(:answers)
  scope :with_predefined_answers, includes(:predefined_answers)
  
  accepts_nested_attributes_for :predefined_answers, :reject_if => :all_blank
  
  attr_accessor :custom_answer
  
  def answers_predefined_answer_ids
    #Answer.find_all_by_uuid_and_question_id(UserSession.current.uuid, self).map(&:predefined_answer_id)
  end
  
  def answers_predefined_answer_ids=(predefined_answer_ids)
    predefined_answer_ids.each do |predefined_answer_id|
      answers.create!(:predefined_answer_id => predefined_answer_id)
    end
  end
  
  def custom_answer=(answer)
    answers.create!(:custom_answer_text => answer) if answer.present?
  end
  
  def answered_by_current_user?
    uuid = UserSession.current.uuid
    answers.select { |a| a.uuid == uuid }.any?
  end
end
