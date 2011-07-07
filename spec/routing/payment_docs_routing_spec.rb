require "spec_helper"

describe PaymentDocsController do
  describe "routing" do

    it "routes to #index" do
      get("/payment_docs").should route_to("payment_docs#index")
    end

    it "routes to #new" do
      get("/payment_docs/new").should route_to("payment_docs#new")
    end

    it "routes to #show" do
      get("/payment_docs/1").should route_to("payment_docs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payment_docs/1/edit").should route_to("payment_docs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payment_docs").should route_to("payment_docs#create")
    end

    it "routes to #update" do
      put("/payment_docs/1").should route_to("payment_docs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payment_docs/1").should route_to("payment_docs#destroy", :id => "1")
    end

  end
end
