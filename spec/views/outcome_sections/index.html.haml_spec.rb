require 'spec_helper'

describe "outcome_sections/index.html.haml" do
  before(:each) do
    assign(:outcome_sections, [
      stub_model(OutcomeSection,
        :outcome_section => "Outcome Section"
      ),
      stub_model(OutcomeSection,
        :outcome_section => "Outcome Section"
      )
    ])
  end

  it "renders a list of outcome_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Outcome Section".to_s, :count => 2
  end
end
