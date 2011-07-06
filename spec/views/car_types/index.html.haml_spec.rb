require 'spec_helper'

describe "car_types/index.html.haml" do
  before(:each) do
    assign(:car_types, [
      stub_model(CarType,
        :car_type => "Car Type"
      ),
      stub_model(CarType,
        :car_type => "Car Type"
      )
    ])
  end

  it "renders a list of car_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Type".to_s, :count => 2
  end
end
