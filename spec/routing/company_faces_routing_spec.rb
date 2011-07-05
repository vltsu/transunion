require "spec_helper"

describe CompanyFacesController do
  describe "routing" do

    it "routes to #index" do
      get("/company_faces").should route_to("company_faces#index")
    end

    it "routes to #new" do
      get("/company_faces/new").should route_to("company_faces#new")
    end

    it "routes to #show" do
      get("/company_faces/1").should route_to("company_faces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/company_faces/1/edit").should route_to("company_faces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/company_faces").should route_to("company_faces#create")
    end

    it "routes to #update" do
      put("/company_faces/1").should route_to("company_faces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/company_faces/1").should route_to("company_faces#destroy", :id => "1")
    end

  end
end
