class Poll < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  
  accepts_nested_attributes_for :questions
  
  def user_took_part_already?
    questions.includes(:answers).select(&:answered_by_current_user?).size == questions.size
  end
end
