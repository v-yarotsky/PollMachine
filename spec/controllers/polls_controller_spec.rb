require 'spec_helper'

describe PollsController do
  let :poll do
    poll = mock_model("Poll").as_null_object
    poll.stub(:user_took_part_already?).and_return(false)
    poll
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
    context "for existent poll which user hasn't taken part in" do
      before(:each) do
        Poll.stub(:find_by_id).and_return(poll)
        get :show, :id => 1
      end
      
      it "should assign a poll if existent poll id supplied" do
        assigns[:poll].should == poll
      end
    
      it "should render show template if poll was found and user didn't take part yet" do
        response.should render_template("polls/show")
      end
    end
    
    context "for existent poll in which user has already participated" do
      it "should redirect to the home page if user took part in the poll already" do
        poll.stub(:user_took_part_already?).and_return(true)
        Poll.stub(:find_by_id).and_return(poll)
        get :show, :id => 1
        response.should redirect_to(root_path)
        flash[:error].should =~ /already/
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
  
  describe "PUT update" do
    context "for existing poll" do
      before(:each) { Poll.stub(:find_by_id).and_return(poll) }
      
      context "if data is correct" do
        it "should render 'Thank you' template if data is correct" do
          poll.stub(:update_attributes).and_return(true)
          put :update, :id => 100
          response.should render_template("polls/thank_you")
        end
      end
      
      context "if data is incomplete" do
        before(:each) { poll.stub(:update_attributes).and_return(false) }
        
        it "should render polls/show_questions if data is incomplete" do  
          put :update, :id => 100
          response.should render_template("polls/show_questions")
        end
        
        it "should set appropriate flash message" do
          put :update, :id => 100
          flash[:error].should =~ /incorrect/i
        end
      end
    end
  end

end
