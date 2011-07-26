require 'spec_helper'

describe "income_sections/edit.html.haml" do
  before(:each) do
    @income_section = assign(:income_section, stub_model(IncomeSection,
      :income_section => "MyString"
    ))
  end

  it "renders the edit income_section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => income_sections_path(@income_section), :method => "post" do
      assert_select "input#income_section_income_section", :name => "income_section[income_section]"
    end
  end
end
