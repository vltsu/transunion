require 'spec_helper'

describe "company_faces/index.html.haml" do
  before(:each) do
    assign(:company_faces, [
      stub_model(CompanyFace,
        :company_face => "Company Face"
      ),
      stub_model(CompanyFace,
        :company_face => "Company Face"
      )
    ])
  end

  it "renders a list of company_faces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Face".to_s, :count => 2
  end
end
