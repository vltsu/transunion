require 'spec_helper'

describe "cargo_classifications/show.html.haml" do
  before(:each) do
    @cargo_classification = assign(:cargo_classification, stub_model(CargoClassification,
      :classification => "Classification"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Classification/)
  end
end
