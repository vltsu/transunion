require 'spec_helper'

describe "payment_docs/new.html.haml" do
  before(:each) do
    assign(:payment_doc, stub_model(PaymentDoc,
      :payment_docs => "MyString"
    ).as_new_record)
  end

  it "renders new payment_doc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_docs_path, :method => "post" do
      assert_select "input#payment_doc_payment_docs", :name => "payment_doc[payment_docs]"
    end
  end
end
