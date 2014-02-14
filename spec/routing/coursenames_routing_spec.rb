require "spec_helper"

describe CoursenamesController do
  describe "routing" do

    it "routes to #index" do
      get("/coursenames").should route_to("coursenames#index")
    end

    it "routes to #new" do
      get("/coursenames/new").should route_to("coursenames#new")
    end

    it "routes to #show" do
      get("/coursenames/1").should route_to("coursenames#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coursenames/1/edit").should route_to("coursenames#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coursenames").should route_to("coursenames#create")
    end

    it "routes to #update" do
      put("/coursenames/1").should route_to("coursenames#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coursenames/1").should route_to("coursenames#destroy", :id => "1")
    end

  end
end
