require 'spec_helper'

describe "pages/imprint.html.haml" do

  it "should have the right title" do
    visit imprint_path
    page.should have_selector("title", :content => "Recipes | Imprint")
  end


end
