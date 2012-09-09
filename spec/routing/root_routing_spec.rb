require "spec_helper"

describe ApplicationController do
  describe "root route" do

    it "should render the monitor#show view" do
      assert_recognizes({:controller => 'monitors', :action => 'show'}, {:path => '/', :method => :get})
    end
    
  end
end
