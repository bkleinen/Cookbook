require 'spec_helper'

describe "instructions/index.html.haml" do
  before(:each) do
    assign(:instructions, [
      stub_model(Instruction,
        :step => "1",
        :description => "bla",
        :recipe_id => "2",
        :ingredient_id => 3
      ),
      stub_model(Instruction,
        :step => "1",
        :description => "bla",
        :recipe_id => "2",
        :ingredient_id => 3
      )
    ])
  end

  it "renders a list of instructions" do
    render
    assert_select("tr>td", :text => 1.to_s, :count => 2)
    assert_select("tr>td", :text => 2.to_s, :count => 2)
    assert_select("tr>td", :text => "bla", :count => 2)
    assert_select("tr>td", :text => 3.to_s, :count => 2)
  end
end
