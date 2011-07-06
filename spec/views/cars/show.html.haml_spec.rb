require 'spec_helper'

describe "cars/show.html.haml" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :car_model_id => 1,
      :car_type_id => 1,
      :car_tonnage_id => 1,
      :type => "Type",
      :year => "Year",
      :state_number => "State Number",
      :body_state_number => "Body State Number",
      :body_volume => "Body Volume",
      :body_pallet => "Body Pallet",
      :body_v_b_z => "Body V B Z",
      :dimensions_width => "9.99",
      :dimensions_length => "9.99",
      :dimensions_height => "9.99",
      :about => "About",
      :operation_city => false,
      :operation_region => false,
      :operation_intercity => false,
      :driver_id => 1,
      :san_passport => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body State Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body Volume/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body Pallet/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Body V B Z/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/About/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
