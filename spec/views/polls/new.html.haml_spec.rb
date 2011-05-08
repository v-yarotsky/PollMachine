require 'spec_helper'

describe "polls/new" do

  let :poll do
    poll = Factory.build(:poll)
  end
  
  before(:each) do
    assign(:poll, poll)
    render
  end
  
  it "should contain form for the poll" do
    rendered.should have_selector("form", :action => polls_path)
    rendered.should have_selector("input", :type => "text", :name => "poll[title]")
    rendered.should have_selector("textarea", :name => "poll[description]")
    rendered.should have_selector("input", :type => "submit")
  end
  
end