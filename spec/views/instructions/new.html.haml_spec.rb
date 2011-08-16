require 'spec_helper'

describe "instructions/new.html.haml" do
  before(:each) do
    assign(:instruction, stub_model(Instruction,
      :step => 1,
      :description => "MyText",
      :recipe_id => 1,
      :ingredient_id => 1
    ).as_new_record)
  end

  it "renders new instruction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instructions_path, :method => "post" do
      assert_select "input#instruction_step", :name => "instruction[step]"
      assert_select "textarea#instruction_description", :name => "instruction[description]"
      assert_select "input#instruction_recipe_id", :name => "instruction[recipe_id]"
      assert_select "input#instruction_ingredient_id", :name => "instruction[ingredient_id]"
    end
  end
end
