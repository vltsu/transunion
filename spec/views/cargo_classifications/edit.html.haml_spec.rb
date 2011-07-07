require 'spec_helper'

describe "cargo_classifications/edit.html.haml" do
  before(:each) do
    @cargo_classification = assign(:cargo_classification, stub_model(CargoClassification,
      :classification => "MyString"
    ))
  end

  it "renders the edit cargo_classification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cargo_classifications_path(@cargo_classification), :method => "post" do
      assert_select "input#cargo_classification_classification", :name => "cargo_classification[classification]"
    end
  end
end
