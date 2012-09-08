require 'spec_helper'

describe "incidents/index" do
  before(:each) do
    assign(:incidents, [
      stub_model(Incident,
        :key => "Key",
        :service => "Service",
        :description => "Description",
        :severity => "Severity",
        :status => "Status"
      ),
      stub_model(Incident,
        :key => "Key",
        :service => "Service",
        :description => "Description",
        :severity => "Severity",
        :status => "Status"
      )
    ])
  end

  it "renders a list of incidents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Severity".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
