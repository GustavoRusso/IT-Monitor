require 'spec_helper'

describe "dashboards/index" do
  before(:each) do
    assign(:dashboards, [
      stub_model(Dashboard,
        :active_incidents => 1,
        :active_problems => 2,
        :requested_changes => 3
      ),
      stub_model(Dashboard,
        :active_incidents => 1,
        :active_problems => 2,
        :requested_changes => 3
      )
    ])
  end

  it "renders a list of dashboards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
