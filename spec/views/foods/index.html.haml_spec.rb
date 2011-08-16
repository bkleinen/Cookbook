require 'spec_helper'

describe "foods/index.html.haml" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :name_en => "Name En",
        :name_de => "Name De",
        :element_id => 1
      ),
      stub_model(Food,
        :name_en => "Name En",
        :name_de => "Name De",
        :element_id => 1
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name De".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
