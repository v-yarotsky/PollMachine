class QuestionsController < ApplicationController
  include PollAwareness

  before_filter :authenticate_user!, :only => [:new, :create]
  
  def new
    poll.questions.build if poll.questions.blank?
  end
  
  def update
    if poll.update_attributes(params[:poll])
      redirect_to root_path, :notice => "Спасибо"
    else
      flash[:alert] = "Введенные данные неверны"
      render :action => :new
    end
  end
  
end
