class AnswersController < ApplicationController
  include PollAwareness
  
  before_filter :ensure_user_did_not_participate, :only => [:new, :create]
  
  def new
  end

  def create
    begin
      Answer.transaction do
        Answer.create!(params[:answers].reject { |a| a[:predefined_answer_id].blank? })
      end
      redirect_to polls_path, :notice => "Thank you"
    rescue
      flash[:alert] = "Submitted data is incorrect"
      redirect_to root_path
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
