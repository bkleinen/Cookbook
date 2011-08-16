require 'spec_helper'

describe "ingredients/show.html.haml" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :amount => "9.99",
      :unit_id => 1,
      :food_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
