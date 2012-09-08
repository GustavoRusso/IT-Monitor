require 'spec_helper'

describe "dashboards/show" do
  before(:each) do
    @dashboard = assign(:dashboard, stub_model(Dashboard,
      :active_incidents => 1,
      :active_problems => 2,
      :requested_changes => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
