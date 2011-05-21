class AnswersController < ApplicationController
  include PollAwareness
  
  before_filter :ensure_user_did_not_participate, :only => [:new, :create]
  
  def new
  end

  def create
    begin
      Answer.transaction do
        params[:questions].each do |question_id, question_attributes|
          question_attributes[:answers].each do |answer_attributes|
            Answer.create!({ :question_id => question_id }.merge(answer_attributes))
          end
        end 
      end
      redirect_to polls_path, :notice => "Thank you"
    rescue => e
      redirect_to root_path, :alert => "Submitted data is incorrect"
      #render :text => e.backtrace
    end
  end
  
  private
  
  def questions
    @questions ||= poll.questions.with_predefined_answers
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, :alert => "Poll was not found"
    nil
  end
  helper_method :questions

end
