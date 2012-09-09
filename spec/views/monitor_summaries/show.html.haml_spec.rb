require 'spec_helper'

describe "monitor_summaries/show" do
  before(:each) do
    @monitor_summary = assign(:monitor_summary, stub_model(MonitorSummary,
      :active_incidents => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
