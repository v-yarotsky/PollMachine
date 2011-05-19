module ApplicationHelper
  def button_link(text, url, css_class = "", options = {})
    options.reverse_merge!({ :title => text, :class => "button #{css_class}" })
    link_to(text, url, options).html_safe
  end
end
