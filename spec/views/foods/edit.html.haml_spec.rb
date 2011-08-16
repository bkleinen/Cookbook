require 'spec_helper'

describe "foods/edit.html.haml" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name_en => "MyString",
      :name_de => "MyString",
      :element_id => 1
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path(@food), :method => "post" do
      assert_select "input#food_name_en", :name => "food[name_en]"
      assert_select "input#food_name_de", :name => "food[name_de]"
      assert_select "input#food_element_id", :name => "food[element_id]"
    end
  end
end
