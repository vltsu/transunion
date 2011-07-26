require 'spec_helper'

describe "outcome_sections/edit.html.haml" do
  before(:each) do
    @outcome_section = assign(:outcome_section, stub_model(OutcomeSection,
      :outcome_section => "MyString"
    ))
  end

  it "renders the edit outcome_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => outcome_sections_path(@outcome_section), :method => "post" do
      assert_select "input#outcome_section_outcome_section", :name => "outcome_section[outcome_section]"
    end
  end
end
