require 'spec_helper'

describe "opfs/index.html.haml" do
  before(:each) do
    assign(:opfs, [
      stub_model(Opf,
        :opf => "Opf"
      ),
      stub_model(Opf,
        :opf => "Opf"
      )
    ])
  end

  it "renders a list of opfs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Opf".to_s, :count => 2
  end
end
