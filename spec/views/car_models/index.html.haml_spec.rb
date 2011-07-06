require 'spec_helper'

describe "car_models/index.html.haml" do
  before(:each) do
    assign(:car_models, [
      stub_model(CarModel,
        :car_model => "Car Model"
      ),
      stub_model(CarModel,
        :car_model => "Car Model"
      )
    ])
  end

  it "renders a list of car_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Car Model".to_s, :count => 2
  end
end
