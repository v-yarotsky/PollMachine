module PollsHelper
  def link_to_move_up
    link_to "up", nil, :class => "button move_up"
  end
  
  def link_to_move_down
    link_to "down", nil, :class => "button move_down"
  end
end
