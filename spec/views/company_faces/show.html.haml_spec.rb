require 'spec_helper'

describe "company_faces/show.html.haml" do
  before(:each) do
    @company_face = assign(:company_face, stub_model(CompanyFace,
      :company_face => "Company Face"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Face/)
  end
end
