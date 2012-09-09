require 'spec_helper'

describe "monitor_summaries/new" do
  before(:each) do
    assign(:monitor_summary, stub_model(MonitorSummary,
      :active_incidents => 1
    ).as_new_record)
  end

  it "renders new monitor_summary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => monitor_summaries_path, :method => "post" do
      assert_select "input#monitor_summary_active_incidents", :name => "monitor_summary[active_incidents]"
    end
  end
end
