require 'spec_helper'

describe "pages/contact.html.haml" do
  it "renders attributes in <p>" do
    render
    rendered.should match(/Contact/i)
  end
  it "should have the right title" do
      render
      visit contact_path
      page.should have_selector("title", :content => "Recipes | Contact")
  end
end
