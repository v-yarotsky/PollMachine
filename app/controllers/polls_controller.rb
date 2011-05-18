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
  
  def update
    if poll.update_attributes(params[:poll])
      redirect_to root_path, :notice => "Thank you"
    else
      flash[:alert] = "Submitted data incorrect"
      render :action => :new
    end
  end
  
  def index
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
  
  def tag
    @polls = Poll.tagged_with(params[:id])
    render :action => :index
  end
  
  private
  
  def polls
    @polls ||= Poll.all
  end
  helper_method :polls
  
  def tags
    @tags ||= Poll.tag_counts_on(:tags)
  end
  helper_method :tags
  
end
