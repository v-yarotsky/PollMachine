class Poll < ActiveRecord::Base
  acts_as_taggable
  
  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions
  
  accepts_nested_attributes_for :questions, :allow_destroy => true
  
  validates_presence_of :title
  validates_presence_of :questions, :on => :update
  
  scope :with_questions, joins(:questions).group("polls.id").having("COUNT(questions.id) > 0")
  
  #default_scope with_questions
  
  def user_took_part_already?
    #answers.present? && questions.includes(:answers).select(&:answered_by_current_user?).size == questions.size
  end
  
  def owned_by?(user)
    self.user_id == user.try(:id)
  end
  
  def answers_count
    answers.map(&:uuid).uniq.count
  end
end
