require 'spec_helper'

describe "payment_ways/new.html.haml" do
  before(:each) do
    assign(:payment_way, stub_model(PaymentWay,
      :payment_way => "MyString"
    ).as_new_record)
  end

  it "renders new payment_way form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_ways_path, :method => "post" do
      assert_select "input#payment_way_payment_way", :name => "payment_way[payment_way]"
    end
  end
end
