require 'spec_helper'

describe "dashboards/new" do
  before(:each) do
    assign(:dashboard, stub_model(Dashboard,
      :active_incidents => 1,
      :active_problems => 1,
      :requested_changes => 1
    ).as_new_record)
  end

  it "renders new dashboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dashboards_path, :method => "post" do
      assert_select "input#dashboard_active_incidents", :name => "dashboard[active_incidents]"
      assert_select "input#dashboard_active_problems", :name => "dashboard[active_problems]"
      assert_select "input#dashboard_requested_changes", :name => "dashboard[requested_changes]"
    end
  end
end
