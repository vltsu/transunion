require 'spec_helper'

describe "payment_ways/edit.html.haml" do
  before(:each) do
    @payment_way = assign(:payment_way, stub_model(PaymentWay,
      :payment_way => "MyString"
    ))
  end

  it "renders the edit payment_way form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payment_ways_path(@payment_way), :method => "post" do
      assert_select "input#payment_way_payment_way", :name => "payment_way[payment_way]"
    end
  end
end
