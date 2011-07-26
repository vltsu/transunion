require 'spec_helper'

describe "outcome_sections/new.html.haml" do
  before(:each) do
    assign(:outcome_section, stub_model(OutcomeSection,
      :outcome_section => "MyString"
    ).as_new_record)
  end

  it "renders new outcome_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => outcome_sections_path, :method => "post" do
      assert_select "input#outcome_section_outcome_section", :name => "outcome_section[outcome_section]"
    end
  end
end
