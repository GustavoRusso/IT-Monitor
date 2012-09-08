require 'spec_helper'

describe "incidents/show" do
  before(:each) do
    @incident = assign(:incident, stub_model(Incident,
      :key => "Key",
      :service => "Service",
      :description => "Description",
      :severity => "Severity",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Key/)
    rendered.should match(/Service/)
    rendered.should match(/Description/)
    rendered.should match(/Severity/)
    rendered.should match(/Status/)
  end
end
