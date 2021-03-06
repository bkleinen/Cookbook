require 'spec_helper'

describe "ingredients/new.html.haml" do
  before(:each) do
    assign(:ingredient, stub_model(Ingredient,
      :amount => "9.99",
      :unit_id => 1,
      :food_id => 1,
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path, :method => "post" do
      assert_select "input#ingredient_amount", :name => "ingredient[amount]"
      assert_select "textarea#ingredient_comment", :name => "ingredient[comment]"
    end
  end
end
