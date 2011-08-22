require 'spec_helper'

describe "instructions/new.html.haml" do
  before(:each) do
    assign(:instruction, stub_model(Instruction,
      :step => "",
      :description => "",
      :recipe_id => "",
      :ingredient_id => 1
    ).as_new_record)
  end

  it "renders new instruction form" do
    render

    rendered.should have_selector("form", :action => instructions_path, :method => "post") do |form|
      form.should have_selector("input#instruction_step", :name => "instruction[step]")
      form.should have_selector("input#instruction_description", :name => "instruction[description]")
    end
  end
end
