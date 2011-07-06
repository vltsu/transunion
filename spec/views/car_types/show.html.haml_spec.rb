require 'spec_helper'

describe "car_types/show.html.haml" do
  before(:each) do
    @car_type = assign(:car_type, stub_model(CarType,
      :car_type => "Car Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Car Type/)
  end
end
