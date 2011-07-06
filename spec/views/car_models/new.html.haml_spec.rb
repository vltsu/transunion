require 'spec_helper'

describe "car_models/new.html.haml" do
  before(:each) do
    assign(:car_model, stub_model(CarModel,
      :car_model => "MyString"
    ).as_new_record)
  end

  it "renders new car_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_models_path, :method => "post" do
      assert_select "input#car_model_car_model", :name => "car_model[car_model]"
    end
  end
end
