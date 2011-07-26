require "spec_helper"

describe IncomeSectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/income_sections").should route_to("income_sections#index")
    end

    it "routes to #new" do
      get("/income_sections/new").should route_to("income_sections#new")
    end

    it "routes to #show" do
      get("/income_sections/1").should route_to("income_sections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/income_sections/1/edit").should route_to("income_sections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/income_sections").should route_to("income_sections#create")
    end

    it "routes to #update" do
      put("/income_sections/1").should route_to("income_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/income_sections/1").should route_to("income_sections#destroy", :id => "1")
    end

  end
end
