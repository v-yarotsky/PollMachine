class PredefinedAnswer < ActiveRecord::Base
  belongs_to :question
  
  validates_presence_of :text
end
