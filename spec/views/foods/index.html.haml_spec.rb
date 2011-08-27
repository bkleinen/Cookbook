require 'spec_helper'

describe "foods/index.html.haml" do
  before(:each) do
    assign(:foods, [
        stub_model(Food,
                   :name => "Name",
                   :element_id => 1
        ),
        stub_model(Food,
                   :name => "Name",
                   :element_id => 1
        )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
