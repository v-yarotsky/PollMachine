class PollsController < ApplicationController
  before_filter :initialize_poll, :except => [:index]
  before_filter :ensure_user_has_not_participated, :except => [:index]
  
  def index
    @polls = Poll.all
  end
  
  def show
  end
  
  def show_questions
  end
  
  def update
    if @poll.update_attributes(params[:poll])
      render "thank_you"
    else
      flash[:error] = "Submitted data is incorrect"
      render :action => :show_questions
    end
  end
  
  protected
  
  def initialize_poll
    @poll = Poll.find_by_id(params[:id])
    unless @poll
      flash[:error] = "Poll was not found"
      redirect_to root_path
    end
  end
  
  def ensure_user_has_not_participated
    if @poll.user_took_part_already?
      flash[:error] = "You have already taken part in this poll"
      redirect_to root_path
    end
  end
end
