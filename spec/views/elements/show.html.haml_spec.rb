require 'spec_helper'

describe "elements/show.html.haml" do
  before(:each) do
    @element = assign(:element, stub_model(Element,
      :name => "Name"
    ))
    @foods = []
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
