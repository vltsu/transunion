require "spec_helper"

describe CarrierCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/carrier_companies").should route_to("carrier_companies#index")
    end

    it "routes to #new" do
      get("/carrier_companies/new").should route_to("carrier_companies#new")
    end

    it "routes to #show" do
      get("/carrier_companies/1").should route_to("carrier_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/carrier_companies/1/edit").should route_to("carrier_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/carrier_companies").should route_to("carrier_companies#create")
    end

    it "routes to #update" do
      put("/carrier_companies/1").should route_to("carrier_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/carrier_companies/1").should route_to("carrier_companies#destroy", :id => "1")
    end

  end
end
