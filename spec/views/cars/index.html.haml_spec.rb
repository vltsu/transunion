require 'spec_helper'

describe "cars/index.html.haml" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
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
      ),
      stub_model(Car,
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
      )
    ])
  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body State Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body Volume".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body Pallet".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Body V B Z".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "About".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
