Given /^I am on the monitor page$/ do
  visit (monitor_path)
end

When /^I follow the 'Incidents' link$/ do
  click_link('Incidents')
end

Then /^I should be on the incidents page$/ do
  current_path = URI.parse(current_url).path
  current_path.should == incidents_path
end
