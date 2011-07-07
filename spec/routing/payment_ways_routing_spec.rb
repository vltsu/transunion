require "spec_helper"

describe PaymentWaysController do
  describe "routing" do

    it "routes to #index" do
      get("/payment_ways").should route_to("payment_ways#index")
    end

    it "routes to #new" do
      get("/payment_ways/new").should route_to("payment_ways#new")
    end

    it "routes to #show" do
      get("/payment_ways/1").should route_to("payment_ways#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payment_ways/1/edit").should route_to("payment_ways#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payment_ways").should route_to("payment_ways#create")
    end

    it "routes to #update" do
      put("/payment_ways/1").should route_to("payment_ways#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payment_ways/1").should route_to("payment_ways#destroy", :id => "1")
    end

  end
end
