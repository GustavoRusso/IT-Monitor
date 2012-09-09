require "spec_helper"

describe MonitorSummariesController do
  describe "routing" do

    it "routes to #index" do
      get("/monitor_summaries").should route_to("monitor_summaries#index")
    end

    it "routes to #new" do
      get("/monitor_summaries/new").should route_to("monitor_summaries#new")
    end

    it "routes to #show" do
      get("/monitor_summaries/1").should route_to("monitor_summaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/monitor_summaries/1/edit").should route_to("monitor_summaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/monitor_summaries").should route_to("monitor_summaries#create")
    end

    it "routes to #update" do
      put("/monitor_summaries/1").should route_to("monitor_summaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/monitor_summaries/1").should route_to("monitor_summaries#destroy", :id => "1")
    end

  end
end
