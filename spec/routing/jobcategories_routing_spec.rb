require "spec_helper"

describe JobcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/jobcategories").should route_to("jobcategories#index")
    end

    it "routes to #new" do
      get("/jobcategories/new").should route_to("jobcategories#new")
    end

    it "routes to #show" do
      get("/jobcategories/1").should route_to("jobcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jobcategories/1/edit").should route_to("jobcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jobcategories").should route_to("jobcategories#create")
    end

    it "routes to #update" do
      put("/jobcategories/1").should route_to("jobcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jobcategories/1").should route_to("jobcategories#destroy", :id => "1")
    end

  end
end
