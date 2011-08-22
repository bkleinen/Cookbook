require 'spec_helper'

describe "instructions/edit.html.haml" do
  before(:each) do
    @instruction = assign(:instruction, stub_model(Instruction,
      :step => "",
      :description => "",
      :recipe_id => "",
      :ingredient_id => 1
    ))
  end

  it "renders the edit instruction form" do
    render

    rendered.should have_selector("form", :action => instruction_path(@instruction), :method => "post") do |form|
      form.should have_selector("input#instruction_step", :name => "instruction[step]")
      form.should have_selector("input#instruction_description", :name => "instruction[description]")
    end
  end
end
