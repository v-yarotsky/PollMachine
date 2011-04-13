require 'spec_helper'

describe "polls/show_questions.html.haml" do
  it "should display questions with answers" do
    poll = Factory.create(:poll_with_questions_and_answers)
    assign(:poll, poll)
    render
    rendered.should have_selector(:form, :action => poll_path(poll))
    poll.questions.each do |question|
      rendered.should have_selector("*", :class => "question") do |question_content|
        rendered.should contain(question.text)
        
        question.predefined_answers.each do |predefined_answer|
          rendered.should have_selector("*", :class => "answer") do |predefined_answer_content|
            predefined_answer_content.should have_selector(:input, :type => "radio", :value => predefined_answer.id.to_s)
            predefined_answer_content.should contain(predefined_answer.text)
          end
        end
        
      end
    end
    rendered.should have_selector(:input, :type => "submit")
  end
  
  
end