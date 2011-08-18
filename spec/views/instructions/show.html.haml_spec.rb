require 'spec_helper'

describe "instructions/show.html.haml" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :step => "",
      :description => "",
      :recipe_id => "",
      :ingredient_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
    rendered.should contain(1.to_s)
  end
end
