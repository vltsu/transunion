require 'spec_helper'

describe "payment_docs/edit.html.haml" do
  before(:each) do
    @payment_doc = assign(:payment_doc, stub_model(PaymentDoc,
      :payment_docs => "MyString"
    ))
  end

  it "renders the edit payment_doc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_docs_path(@payment_doc), :method => "post" do
      assert_select "input#payment_doc_payment_docs", :name => "payment_doc[payment_docs]"
    end
  end
end
