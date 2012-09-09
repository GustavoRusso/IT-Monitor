require 'spec_helper'

describe "monitor_summaries/edit" do
  before(:each) do
    @monitor_summary = assign(:monitor_summary, stub_model(MonitorSummary,
      :active_incidents => 1
    ))
  end

  it "renders the edit monitor_summary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => monitor_summaries_path(@monitor_summary), :method => "post" do
      assert_select "input#monitor_summary_active_incidents", :name => "monitor_summary[active_incidents]"
    end
  end
end
