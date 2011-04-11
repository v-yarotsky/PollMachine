require 'spec_helper'

describe PollsController do
  let :poll do
    mock_model("Poll")
  end
  
  describe "GET index" do
    it "should be successful" do
      get :index
      response.should be_success
    end
    
    it "should assign a list of polls" do
      Poll.stub(:all).and_return([poll])
      get :index
      assigns[:polls].should == [poll]
    end
  end
  
  describe "GET show" do
    context "for existent poll" do
      before(:each) do
        Poll.stub(:find_by_id).and_return(poll)
        get :show, :id => 1
      end
      
      it "should assign a poll if existent poll id supplied" do
        assigns[:poll].should == poll
      end
    
      it "should render show template if poll was found" do
        response.should render_template("polls/show")
      end
    end
    
    context "for non existent poll" do
      it "should redirect to home page if poll with supplied id was not found" do
        get :show, :id => 100
        response.should redirect_to(root_path)
      end
    
      it "should set appropriate message if poll was not found" do
        get :show, :id => 100
        flash[:error].should =~ /not found/
      end
    end
  end

end
