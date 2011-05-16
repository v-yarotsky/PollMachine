class PredefinedAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :answers, :readonly => true
  
  validates_presence_of :text
  
  default_scope order(:position)
  
  def times_selected
    answers.length
  end
  
  def times_selected_in_percent
    return 0 if answers.empty?
    100 * times_selected / question.answers_count
  end
end
