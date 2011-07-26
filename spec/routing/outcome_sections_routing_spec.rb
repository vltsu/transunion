require "spec_helper"

describe OutcomeSectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/outcome_sections").should route_to("outcome_sections#index")
    end

    it "routes to #new" do
      get("/outcome_sections/new").should route_to("outcome_sections#new")
    end

    it "routes to #show" do
      get("/outcome_sections/1").should route_to("outcome_sections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/outcome_sections/1/edit").should route_to("outcome_sections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/outcome_sections").should route_to("outcome_sections#create")
    end

    it "routes to #update" do
      put("/outcome_sections/1").should route_to("outcome_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/outcome_sections/1").should route_to("outcome_sections#destroy", :id => "1")
    end

  end
end
