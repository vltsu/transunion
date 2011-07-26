require 'spec_helper'

describe "outcome_sections/show.html.haml" do
  before(:each) do
    @outcome_section = assign(:outcome_section, stub_model(OutcomeSection,
      :outcome_section => "Outcome Section"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Outcome Section/)
  end
end
