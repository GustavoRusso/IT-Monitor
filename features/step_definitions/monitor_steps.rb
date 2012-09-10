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

Given /^I have (\d+) active incidents in my system$/ do |active_indicents|
  MonitorSummary.create!(:active_incidents =>active_indicents)
end

Then /^I should see the active incidents count set to (\d+)$/ do |active_indicents|
  within("div#monitor_summary") do
    within("label#active_incidents") do
      text.should =="Active incidents: #{active_indicents}"
    end
  end
end
