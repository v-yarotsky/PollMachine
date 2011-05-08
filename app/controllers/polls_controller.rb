class PollsController < ApplicationController
  before_filter :ensure_user_did_not_participate, :only => [:show, :update]
  #before_filter :ensure_poll_found, :except => [:index, :new, :create]
  before_filter :authenticate_user!, :only => [:new, :create]
  
  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if poll.save
      redirect_to add_questions_poll_path(poll)
    else
      render :action => :new, :alert => "Invalid data supplied"
    end
  end
  
  def index
    @polls = Poll.all
  end
  
  def show
  end
  
  def add_questions
  end
  
  def update
    if poll.update_attributes(params[:poll])
      render "thank_you"
    else
      render :action => :show_questions, :alert => "Submitted data is incorrect"
    end
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
