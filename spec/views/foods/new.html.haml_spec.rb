require 'spec_helper'

describe "foods/new.html.haml" do
  before(:each) do
    assign(:food, stub_model(Food,
      :name_en => "MyString",
      :name_de => "MyString",
      :element_id => 1
    ).as_new_record)
  end

  it "renders new food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path, :method => "post" do
      assert_select "input#food_name_en", :name => "food[name_en]"
      assert_select "input#food_name_de", :name => "food[name_de]"
      assert_select "input#food_element_id", :name => "food[element_id]"
    end
  end
end
