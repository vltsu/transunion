require 'spec_helper'

describe "car_models/show.html.haml" do
  before(:each) do
    @car_model = assign(:car_model, stub_model(CarModel,
      :car_model => "Car Model"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Model/)
  end
end
