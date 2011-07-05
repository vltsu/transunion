require 'spec_helper'

describe "opfs/show.html.haml" do
  before(:each) do
    @opf = assign(:opf, stub_model(Opf,
      :opf => "Opf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Opf/)
  end
end
