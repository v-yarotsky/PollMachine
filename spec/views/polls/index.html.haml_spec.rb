require 'spec_helper'

describe "polls/index.html.haml" do
  it "should display links to take part in the poll" do
    poll = mock_model("Poll", :title => "Pizza")
    assign(:polls, [poll])
    render
    rendered.should have_selector("a", :href => poll_path(poll.id))
  end
  
  it "should display link to create new poll" do
    assign(:polls, [])
    render
    rendered.should have_selector("a", :href => new_poll_path)
  end
end
