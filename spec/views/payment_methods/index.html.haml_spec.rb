require 'spec_helper'

describe "payment_methods/index.html.haml" do
  before(:each) do
    assign(:payment_methods, [
      stub_model(PaymentMethod,
        :payment_method => "Payment Method"
      ),
      stub_model(PaymentMethod,
        :payment_method => "Payment Method"
      )
    ])
  end

  it "renders a list of payment_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Method".to_s, :count => 2
  end
end
