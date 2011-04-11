require 'spec_helper'

describe "polls/show.html.haml" do
  it "should display the title of the poll" do
    assign_poll(:title => "Foo")
    render
    rendered.should contain(@poll.title)
  end
  
  it "should display a brief description of the poll if it exists" do
    assign_poll(:description => "Bar")
    render
    rendered.should have_selector("p", :class => "description") do |p|
      p.should contain(@poll.description)
    end
  end
  
  it "should not display the description if it does not exist" do
    assign_poll(:description => nil)
    render
    rendered.should_not have_selector("p", :class => "description")
  end
  
  it "should display button to proceed to the questions" do
    assign_poll
    render
    rendered.should have_selector("a", :class => "button", :id => "proceed_to_questions", :href => poll_questions_path(@poll.id))
  end
  
  private
  
  def assign_poll(options = {})
    @poll = Factory.create(:poll, options)
    assign(:poll, @poll)
  end
end