require "spec_helper"

describe CustomerCompaniesController do
  describe "routing" do

    it "routes to #index" do
      get("/customer_companies").should route_to("customer_companies#index")
    end

    it "routes to #new" do
      get("/customer_companies/new").should route_to("customer_companies#new")
    end

    it "routes to #show" do
      get("/customer_companies/1").should route_to("customer_companies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/customer_companies/1/edit").should route_to("customer_companies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/customer_companies").should route_to("customer_companies#create")
    end

    it "routes to #update" do
      put("/customer_companies/1").should route_to("customer_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/customer_companies/1").should route_to("customer_companies#destroy", :id => "1")
    end

  end
end
