class PollsController < ApplicationController
  include PollAwareness
  
  before_filter :ensure_user_did_not_participate, :only => [:show]
  before_filter :authenticate_user!, :only => [:new, :create]
  
  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if poll.save
      redirect_to add_questions_poll_path(poll)
    else
      flash[:alert] = "Invalid data supplied"
      render :action => :new
    end
  end
  
  def index
    @polls = Poll.all
  end
  
  def show
  end
  
  def add_questions
    poll.questions.build if poll.questions.blank?
  end
  
  def destroy
    poll.try(:destroy)
    redirect_to :action => :index
  end
  
end
