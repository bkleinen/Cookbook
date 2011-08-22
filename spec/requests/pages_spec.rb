require 'spec_helper'

describe "Pages" do
 describe "GET /imprint" do
    it "should have the right title" do
      visit imprint_path
      page.should have_selector("title", :content => "Recipes | Imprint")
    end
  end
end

