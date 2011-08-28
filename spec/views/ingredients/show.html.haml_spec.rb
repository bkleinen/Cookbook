require 'spec_helper'

describe "ingredients/show.html.haml" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :amount => "9.99",
      :unit_id => 1,
      :food_id => 1,
      :recipe_id => 1,
      :comment => "MyText"
    ))
    @recipe = assign(:recipe, stub_model(Recipe,:name => "A Recipe",:id => 1))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
