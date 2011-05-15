class Poll < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions
  
  accepts_nested_attributes_for :questions, :allow_destroy => true
  
  validates_presence_of :title
  validates_presence_of :questions, :on => :update
  
  def user_took_part_already?
    #answers.present? && questions.includes(:answers).select(&:answered_by_current_user?).size == questions.size
  end
  
  def owned_by?(user)
    self.user_id == user.try(:id)
  end
end
