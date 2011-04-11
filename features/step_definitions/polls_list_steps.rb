Given /^there are polls titled (.+)$/ do |poll_titles|
  poll_titles.split(", ").each do |title|
    Factory.create(:poll, :title => title)
  end
end