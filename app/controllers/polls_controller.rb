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
      redirect_to new_poll_questions_path(poll)
    else
      flash[:alert] = "Введенные данные неверны"
      render :action => :new
    end
  end
  
  def update
    if poll.update_attributes(params[:poll])
      redirect_to root_path, :notice => "Спасибо"
    else
      flash[:alert] = "Введенные данные неверны"
      render :action => :new
    end
  end
  
  def index
  end
  
  def show
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
