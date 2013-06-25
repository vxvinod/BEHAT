require "spec_helper"

describe BehatwebsController do
  describe "routing" do

    it "routes to #index" do
      get("/behatwebs").should route_to("behatwebs#index")
    end

    it "routes to #new" do
      get("/behatwebs/new").should route_to("behatwebs#new")
    end

    it "routes to #show" do
      get("/behatwebs/1").should route_to("behatwebs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/behatwebs/1/edit").should route_to("behatwebs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/behatwebs").should route_to("behatwebs#create")
    end

    it "routes to #update" do
      put("/behatwebs/1").should route_to("behatwebs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/behatwebs/1").should route_to("behatwebs#destroy", :id => "1")
    end

  end
end
