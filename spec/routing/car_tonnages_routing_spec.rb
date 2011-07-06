require "spec_helper"

describe CarTonnagesController do
  describe "routing" do

    it "routes to #index" do
      get("/car_tonnages").should route_to("car_tonnages#index")
    end

    it "routes to #new" do
      get("/car_tonnages/new").should route_to("car_tonnages#new")
    end

    it "routes to #show" do
      get("/car_tonnages/1").should route_to("car_tonnages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/car_tonnages/1/edit").should route_to("car_tonnages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/car_tonnages").should route_to("car_tonnages#create")
    end

    it "routes to #update" do
      put("/car_tonnages/1").should route_to("car_tonnages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/car_tonnages/1").should route_to("car_tonnages#destroy", :id => "1")
    end

  end
end
