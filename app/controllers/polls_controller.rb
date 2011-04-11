class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end
  
  def show
    @poll = Poll.find_by_id(params[:id])
    unless @poll
      flash[:error] = "Poll was not found"
      redirect_to root_path
    end
  end
  
end
