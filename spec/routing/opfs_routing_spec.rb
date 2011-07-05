require "spec_helper"

describe OpfsController do
  describe "routing" do

    it "routes to #index" do
      get("/opfs").should route_to("opfs#index")
    end

    it "routes to #new" do
      get("/opfs/new").should route_to("opfs#new")
    end

    it "routes to #show" do
      get("/opfs/1").should route_to("opfs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/opfs/1/edit").should route_to("opfs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/opfs").should route_to("opfs#create")
    end

    it "routes to #update" do
      put("/opfs/1").should route_to("opfs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/opfs/1").should route_to("opfs#destroy", :id => "1")
    end

  end
end
