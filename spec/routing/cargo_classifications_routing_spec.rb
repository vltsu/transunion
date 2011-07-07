require "spec_helper"

describe CargoClassificationsController do
  describe "routing" do

    it "routes to #index" do
      get("/cargo_classifications").should route_to("cargo_classifications#index")
    end

    it "routes to #new" do
      get("/cargo_classifications/new").should route_to("cargo_classifications#new")
    end

    it "routes to #show" do
      get("/cargo_classifications/1").should route_to("cargo_classifications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cargo_classifications/1/edit").should route_to("cargo_classifications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cargo_classifications").should route_to("cargo_classifications#create")
    end

    it "routes to #update" do
      put("/cargo_classifications/1").should route_to("cargo_classifications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cargo_classifications/1").should route_to("cargo_classifications#destroy", :id => "1")
    end

  end
end
