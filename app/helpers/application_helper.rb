module ApplicationHelper
  def button_link(text, url, css_class = "", options = {})
    options.reverse_merge!({ :title => text, :class => "button #{css_class}" })
    link_to(text, url, options).html_safe
  end
  
  def text_field_with_errors(form, *args)
    title = args.shift
    form.text_field(title, *args) + error_span(form, title)
  end
  
  def text_area_with_errors(form, *args)
    title = args.shift
    form.text_area(title, *args) + error_span(form, title)
  end
  
  def error_span(form, title)
    content_tag(:span, form.object.errors[title], :class => "errors")
  end
end
