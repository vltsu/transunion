require 'spec_helper'

describe "PaymentWays" do
  describe "GET /payment_ways" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get payment_ways_path
      response.status.should be(200)
    end
  end
end
