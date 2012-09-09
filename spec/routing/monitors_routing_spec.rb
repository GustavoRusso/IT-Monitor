require "spec_helper"

describe MonitorsController do
  describe "routing as a singular resource" do

    it "#show action should be the default action" do
      get("/monitor").should route_to("monitors#show")
    end

  end
end
