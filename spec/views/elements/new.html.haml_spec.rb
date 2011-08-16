require 'spec_helper'

describe "elements/new.html.haml" do
  before(:each) do
    assign(:element, stub_model(Element,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new element form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => elements_path, :method => "post" do
      assert_select "input#element_name", :name => "element[name]"
    end
  end
end
