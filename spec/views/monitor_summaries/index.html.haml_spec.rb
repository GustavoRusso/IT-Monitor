require 'spec_helper'

describe "monitor_summaries/index" do
  before(:each) do
    assign(:monitor_summaries, [
      stub_model(MonitorSummary,
        :active_incidents => 1
      ),
      stub_model(MonitorSummary,
        :active_incidents => 1
      )
    ])
  end

  it "renders a list of monitor_summaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
