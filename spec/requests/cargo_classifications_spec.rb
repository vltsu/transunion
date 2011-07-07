require 'spec_helper'

describe "CargoClassifications" do
  describe "GET /cargo_classifications" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cargo_classifications_path
      response.status.should be(200)
    end
  end
end
