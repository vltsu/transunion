require 'spec_helper'

describe "income_sections/show.html.haml" do
  before(:each) do
    @income_section = assign(:income_section, stub_model(IncomeSection,
      :income_section => "Income Section"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Income Section/)
  end
end
