require 'spec_helper'

describe "car_types/new.html.haml" do
  before(:each) do
    assign(:car_type, stub_model(CarType,
      :car_type => "MyString"
    ).as_new_record)
  end

  it "renders new car_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_types_path, :method => "post" do
      assert_select "input#car_type_car_type", :name => "car_type[car_type]"
    end
  end
end
