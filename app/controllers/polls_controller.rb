class PollsController < ApplicationController
  before_filter :ensure_user_did_not_participate, :only => [:show, :update]
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
  
  def show_questions
  end
  
  def add_questions
    poll.questions.build if poll.questions.blank?
  end
  
  def update
    if poll.update_attributes(params[:poll])
      redirect_to polls_path, :notice => "Thank you"
    else
      flash[:alert] = "Submitted data is incorrect"
      render :action => :show_questions
    end
  end
  
  def destroy
    poll.try(:destroy)
    redirect_to :action => :index
  end
  
  private
  
  def poll
    @poll ||= Poll.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, :alert => "Poll was not found"
    nil
  end
  helper_method :poll
  
  def ensure_user_did_not_participate
    if poll.try(:user_took_part_already?)
      redirect_to root_path, :alert => "You have already taken part in this poll"
    end
  end
  
end
