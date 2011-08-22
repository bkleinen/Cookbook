require 'spec_helper'

describe "instructions/show.html.haml" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :step => "1",
      :description => "blub",
      :recipe_id => "2",
      :ingredient_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should have_content("1".to_s)
    rendered.should have_content("blub".to_s)
    rendered.should have_content("2".to_s)
    rendered.should have_content(1.to_s)
  end
end
