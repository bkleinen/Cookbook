require 'spec_helper'

describe "ingredients/edit.html.haml" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :amount => "9.99",
      :unit_id => 1,
      :food_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path(@ingredient), :method => "post" do
      assert_select "input#ingredient_amount", :name => "ingredient[amount]"
      assert_select "input#ingredient_unit_id", :name => "ingredient[unit_id]"
      assert_select "input#ingredient_food_id", :name => "ingredient[food_id]"
      assert_select "textarea#ingredient_comment", :name => "ingredient[comment]"
    end
  end
end
