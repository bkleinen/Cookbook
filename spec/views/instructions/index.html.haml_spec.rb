require 'spec_helper'

describe "instructions/index.html.haml" do
  before(:each) do
    assign(:instructions, [
      stub_model(Instruction,
        :step => 1,
        :description => "MyText",
        :recipe_id => 1,
        :ingredient_id => 1
      ),
      stub_model(Instruction,
        :step => 1,
        :description => "MyText",
        :recipe_id => 1,
        :ingredient_id => 1
      )
    ])
  end

  it "renders a list of instructions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
