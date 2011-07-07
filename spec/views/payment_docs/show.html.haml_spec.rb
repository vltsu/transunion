require 'spec_helper'

describe "payment_docs/show.html.haml" do
  before(:each) do
    @payment_doc = assign(:payment_doc, stub_model(PaymentDoc,
      :payment_docs => "Payment Docs"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Docs/)
  end
end
