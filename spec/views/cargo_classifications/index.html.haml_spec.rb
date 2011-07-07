require 'spec_helper'

describe "cargo_classifications/index.html.haml" do
  before(:each) do
    assign(:cargo_classifications, [
      stub_model(CargoClassification,
        :classification => "Classification"
      ),
      stub_model(CargoClassification,
        :classification => "Classification"
      )
    ])
  end

  it "renders a list of cargo_classifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
  end
end
