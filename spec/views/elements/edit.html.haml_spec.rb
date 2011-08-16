require 'spec_helper'

describe "elements/edit.html.haml" do
  before(:each) do
    @element = assign(:element, stub_model(Element,
      :name => "MyString"
    ))
  end

  it "renders the edit element form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => elements_path(@element), :method => "post" do
      assert_select "input#element_name", :name => "element[name]"
    end
  end
end
