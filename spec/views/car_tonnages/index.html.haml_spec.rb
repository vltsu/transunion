require 'spec_helper'

describe "car_tonnages/index.html.haml" do
  before(:each) do
    assign(:car_tonnages, [
      stub_model(CarTonnage,
        :car_tonnage => "9.99"
      ),
      stub_model(CarTonnage,
        :car_tonnage => "9.99"
      )
    ])
  end

  it "renders a list of car_tonnages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
