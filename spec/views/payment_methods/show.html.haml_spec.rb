require 'spec_helper'

describe "payment_methods/show.html.haml" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(PaymentMethod,
      :payment_method => "Payment Method"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Method/)
  end
end
