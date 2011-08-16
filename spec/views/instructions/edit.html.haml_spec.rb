require 'spec_helper'

describe "instructions/edit.html.haml" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :step => 1,
      :description => "MyText",
      :recipe_id => 1,
      :ingredient_id => 1
    ))
  end

  it "renders the edit instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instructions_path(@instruction), :method => "post" do
      assert_select "input#instruction_step", :name => "instruction[step]"
      assert_select "textarea#instruction_description", :name => "instruction[description]"
      assert_select "input#instruction_recipe_id", :name => "instruction[recipe_id]"
      assert_select "input#instruction_ingredient_id", :name => "instruction[ingredient_id]"
    end
  end
end
