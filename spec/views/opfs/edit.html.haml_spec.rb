require 'spec_helper'

describe "opfs/edit.html.haml" do
  before(:each) do
    @opf = assign(:opf, stub_model(Opf,
      :opf => "MyString"
    ))
  end

  it "renders the edit opf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => opfs_path(@opf), :method => "post" do
      assert_select "input#opf_opf", :name => "opf[opf]"
    end
  end
end
