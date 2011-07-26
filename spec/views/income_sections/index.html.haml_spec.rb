require 'spec_helper'

describe "income_sections/index.html.haml" do
  before(:each) do
    assign(:income_sections, [
      stub_model(IncomeSection,
        :income_section => "Income Section"
      ),
      stub_model(IncomeSection,
        :income_section => "Income Section"
      )
    ])
  end

  it "renders a list of income_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Income Section".to_s, :count => 2
  end
end
