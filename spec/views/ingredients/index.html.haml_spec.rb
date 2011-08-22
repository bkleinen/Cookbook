require 'spec_helper'

describe "ingredients/index.html.haml" do
  before(:each) do
    assign(:ingredients, [
      stub_model(Ingredient,
        :amount => "9.99",
        :unit_id => 1,
        :food_id => 2,
        :comment => "MyText"
      ),
      stub_model(Ingredient,
        :amount => "9.99",
        :unit_id => 1,
        :food_id => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
