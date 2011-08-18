require 'spec_helper'

describe "instructions/index.html.haml" do
  before(:each) do
    assign(:instructions, [
      stub_model(Instruction,
        :step => "",
        :description => "",
        :recipe_id => "",
        :ingredient_id => 1
      ),
      stub_model(Instruction,
        :step => "",
        :description => "",
        :recipe_id => "",
        :ingredient_id => 1
      )
    ])
  end

  it "renders a list of instructions" do
    render
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
