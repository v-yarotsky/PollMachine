class Question < ActiveRecord::Base
  belongs_to :poll
  has_many :predefined_answers, :dependent => :destroy
  has_many :answers, :dependent => :destroy

  scope :with_answers, includes(:answers)
  scope :with_predefined_answers, includes(:predefined_answers)
  
  default_scope order(:position)
  
  validates_presence_of :text
  validates_presence_of :predefined_answers
  
  accepts_nested_attributes_for :predefined_answers, :answers, :reject_if => :all_blank
  
  def answered_by_current_user?
    uuid = UserSession.current.uuid
    answers.select { |a| a.uuid == uuid }.any?
  end
  
  def answers_count
    answers.map(&:uuid).uniq.count
  end

end
