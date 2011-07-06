require 'spec_helper'

describe "car_tonnages/new.html.haml" do
  before(:each) do
    assign(:car_tonnage, stub_model(CarTonnage,
      :car_tonnage => "9.99"
    ).as_new_record)
  end

  it "renders new car_tonnage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_tonnages_path, :method => "post" do
      assert_select "input#car_tonnage_car_tonnage", :name => "car_tonnage[car_tonnage]"
    end
  end
end
