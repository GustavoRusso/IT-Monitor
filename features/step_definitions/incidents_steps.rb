Given /^I am on the incidents page$/ do
  visit (incidents_path)
end

When /^I follow the 'Back to monitor' link$/ do
  click_link('Back to monitor')
end

Then /^I should be redirected to the monitor page$/ do
  current_path = URI.parse(current_url).path
  current_path.should == monitor_path
end
