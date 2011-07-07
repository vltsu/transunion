require 'spec_helper'

describe "payment_ways/show.html.haml" do
  before(:each) do
    @payment_way = assign(:payment_way, stub_model(PaymentWay,
      :payment_way => "Payment Way"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Way/)
  end
end
