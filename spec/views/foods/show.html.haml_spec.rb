require 'spec_helper'

describe "foods/show.html.haml" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name => "Name",
      :element_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
