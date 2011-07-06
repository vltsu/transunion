require 'spec_helper'

describe "car_tonnages/edit.html.haml" do
  before(:each) do
    @car_tonnage = assign(:car_tonnage, stub_model(CarTonnage,
      :car_tonnage => "9.99"
    ))
  end

  it "renders the edit car_tonnage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_tonnages_path(@car_tonnage), :method => "post" do
      assert_select "input#car_tonnage_car_tonnage", :name => "car_tonnage[car_tonnage]"
    end
  end
end
