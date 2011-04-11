Given /^there is a poll titled "([^"]*)", which has some questions$/ do |title|
  @poll = Factory.create(:poll_with_questions, :title => title)
end
