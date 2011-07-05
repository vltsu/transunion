require 'spec_helper'

describe "opfs/new.html.haml" do
  before(:each) do
    assign(:opf, stub_model(Opf,
      :opf => "MyString"
    ).as_new_record)
  end

  it "renders new opf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => opfs_path, :method => "post" do
      assert_select "input#opf_opf", :name => "opf[opf]"
    end
  end
end
