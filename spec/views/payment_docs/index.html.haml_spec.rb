require 'spec_helper'

describe "payment_docs/index.html.haml" do
  before(:each) do
    assign(:payment_docs, [
      stub_model(PaymentDoc,
        :payment_docs => "Payment Docs"
      ),
      stub_model(PaymentDoc,
        :payment_docs => "Payment Docs"
      )
    ])
  end

  it "renders a list of payment_docs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Docs".to_s, :count => 2
  end
end
