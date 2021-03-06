require 'spec_helper'

describe "payment_methods/new.html.haml" do
  before(:each) do
    assign(:payment_method, stub_model(PaymentMethod,
      :payment_method => "MyString"
    ).as_new_record)
  end

  it "renders new payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_methods_path, :method => "post" do
      assert_select "input#payment_method_payment_method", :name => "payment_method[payment_method]"
    end
  end
end
