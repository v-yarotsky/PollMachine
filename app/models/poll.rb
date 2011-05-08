class Poll < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :answers, :through => :questions
  
  accepts_nested_attributes_for :questions
  
  def user_took_part_already?
    answers.present? && questions.includes(:answers).select(&:answered_by_current_user?).size == questions.size
  end
end
