require 'spec_helper'

describe "instructions/show.html.haml" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :step => 1,
      :description => "MyText",
      :recipe_id => 1,
      :ingredient_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
