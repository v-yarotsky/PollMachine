Given /^there is only a poll titled "([^"]*)", which has three questions$/ do |title|
  Poll.destroy_all
  @poll = Factory.create(:poll_with_questions_and_answers, :title => title)
end
