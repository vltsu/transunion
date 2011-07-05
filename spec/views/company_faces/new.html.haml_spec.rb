require 'spec_helper'

describe "company_faces/new.html.haml" do
  before(:each) do
    assign(:company_face, stub_model(CompanyFace,
      :company_face => "MyString"
    ).as_new_record)
  end

  it "renders new company_face form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => company_faces_path, :method => "post" do
      assert_select "input#company_face_company_face", :name => "company_face[company_face]"
    end
  end
end
