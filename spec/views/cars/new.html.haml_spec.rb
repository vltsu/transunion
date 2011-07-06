require 'spec_helper'

describe "cars/new.html.haml" do
  before(:each) do
    assign(:car, stub_model(Car,
      :car_model_id => 1,
      :car_type_id => 1,
      :car_tonnage_id => 1,
      :type => "MyString",
      :year => "MyString",
      :state_number => "MyString",
      :body_state_number => "MyString",
      :body_volume => "MyString",
      :body_pallet => "MyString",
      :body_v_b_z => "MyString",
      :dimensions_width => "9.99",
      :dimensions_length => "9.99",
      :dimensions_height => "9.99",
      :about => "MyString",
      :operation_city => false,
      :operation_region => false,
      :operation_intercity => false,
      :driver_id => 1,
      :san_passport => false
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path, :method => "post" do
      assert_select "input#car_car_model_id", :name => "car[car_model_id]"
      assert_select "input#car_car_type_id", :name => "car[car_type_id]"
      assert_select "input#car_car_tonnage_id", :name => "car[car_tonnage_id]"
      assert_select "input#car_type", :name => "car[type]"
      assert_select "input#car_year", :name => "car[year]"
      assert_select "input#car_state_number", :name => "car[state_number]"
      assert_select "input#car_body_state_number", :name => "car[body_state_number]"
      assert_select "input#car_body_volume", :name => "car[body_volume]"
      assert_select "input#car_body_pallet", :name => "car[body_pallet]"
      assert_select "input#car_body_v_b_z", :name => "car[body_v_b_z]"
      assert_select "input#car_dimensions_width", :name => "car[dimensions_width]"
      assert_select "input#car_dimensions_length", :name => "car[dimensions_length]"
      assert_select "input#car_dimensions_height", :name => "car[dimensions_height]"
      assert_select "input#car_about", :name => "car[about]"
      assert_select "input#car_operation_city", :name => "car[operation_city]"
      assert_select "input#car_operation_region", :name => "car[operation_region]"
      assert_select "input#car_operation_intercity", :name => "car[operation_intercity]"
      assert_select "input#car_driver_id", :name => "car[driver_id]"
      assert_select "input#car_san_passport", :name => "car[san_passport]"
    end
  end
end
