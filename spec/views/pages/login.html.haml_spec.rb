require 'spec_helper'

describe "pages/login.html.haml" do

  it "should have the right title" do
    visit login_path
    page.should have_selector("title", :content => "Recipes | Login")
  end
end
