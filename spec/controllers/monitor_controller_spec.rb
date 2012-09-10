require 'spec_helper'

describe MonitorsController do

  describe "GET show" do

    describe "when there are no monitor_summaries" do
      it "return and empty monitor_summary as @monitor_summary" do
        get :show

        summary = assigns(:monitor_summary)
        summary.should_not be_nil
        summary.active_incidents.should == 0
      end
    end

    describe "when there is a monitor_summaries" do
      it "return the existent monitor_summary as @monitor_summary" do
        existent_summary = MonitorSummary.create!

        get :show

        assigns(:monitor_summary).should == existent_summary
      end
    end
    
  end

end
