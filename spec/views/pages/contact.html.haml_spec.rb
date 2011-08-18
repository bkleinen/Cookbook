require 'spec_helper'

describe "pages/contact.html.haml" do
  it "renders attributes in <p>" do
    render
    rendered.should match(/Contact/i)
  end

end
