module PollsHelper
  
  include ActsAsTaggableOn::TagsHelper
  
  def link_to_move_up(options = {})
    classes = %W(button move_up)
    classes << "small" if options[:small]
    link_to "up", nil, :class => classes
  end
  
  def link_to_move_down(options = {})
    classes = %W(button move_down)
    classes << "small" if options[:small]
    link_to "down", nil, :class => classes
  end
  
  def link_to_remove(f, text, options = {})
    classes = %W(button remove)
    classes << "small" if options[:small]
    f.link_to_remove text, :class => classes
  end
end
