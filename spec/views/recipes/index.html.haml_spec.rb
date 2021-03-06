require 'spec_helper'

describe "recipes/index.html.haml" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :description => "MyText",
        :serves => 1
      ),
      stub_model(Recipe,
        :name => "Name",
        :description => "MyText",
        :serves => 1
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
#    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
