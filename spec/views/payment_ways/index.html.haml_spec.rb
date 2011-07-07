require 'spec_helper'

describe "payment_ways/index.html.haml" do
  before(:each) do
    assign(:payment_ways, [
      stub_model(PaymentWay,
        :payment_way => "Payment Way"
      ),
      stub_model(PaymentWay,
        :payment_way => "Payment Way"
      )
    ])
  end

  it "renders a list of payment_ways" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Way".to_s, :count => 2
  end
end
