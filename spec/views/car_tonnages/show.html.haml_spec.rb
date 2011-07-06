require 'spec_helper'

describe "car_tonnages/show.html.haml" do
  before(:each) do
    @car_tonnage = assign(:car_tonnage, stub_model(CarTonnage,
      :car_tonnage => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
