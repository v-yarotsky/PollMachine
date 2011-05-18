module PollAwareness
  
  def self.included(base)
    base.instance_eval do
      hide_action :poll
      hide_action :ensure_user_did_not_participate
      
      helper_method :poll
    end
  end
  
  def poll
    @poll ||= Poll.find(params[:poll_id] || params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, :alert => "Poll was not found"
    nil
  end
  
  def ensure_user_did_not_participate
    if poll.try(:user_took_part_already?)
      redirect_to root_path, :alert => "You have already taken part in this poll"
    end
  end
  
end
