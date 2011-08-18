require 'spec_helper'

describe "Pages" do
  describe "GET /login" do
    it "should return 200 for /login" do
      get login_path
      response.status.should be(200)
    end
    it "should have the right title" do
      visit login_path
      page.should have_selector("title", :content => "Recipes | Login")
    end
  end
  describe "GET /contact" do
    it "should have the right title" do
      visit contact_path
      page.should have_selector("title", :content => "Recipes | Contact")
    end
  end
  describe "GET /imprint" do
    it "should have the right title" do
      visit imprint_path
      page.should have_selector("title", :content => "Recipes | Imprint")
    end
  end
end

