require 'spec_helper'

describe "incidents/new" do
  before(:each) do
    assign(:incident, stub_model(Incident,
      :key => "MyString",
      :service => "MyString",
      :description => "MyString",
      :severity => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new incident form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incidents_path, :method => "post" do
      assert_select "input#incident_key", :name => "incident[key]"
      assert_select "input#incident_service", :name => "incident[service]"
      assert_select "input#incident_description", :name => "incident[description]"
      assert_select "input#incident_severity", :name => "incident[severity]"
      assert_select "input#incident_status", :name => "incident[status]"
    end
  end
end
