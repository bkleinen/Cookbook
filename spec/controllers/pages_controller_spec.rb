require 'spec_helper'

describe PagesController do

  render_views
  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
    it "should have the right title" do
      #get 'contact'
      visit contact_path
      page.should have_selector("title", :content => "Recipes | Login")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector("title", :content => "Recipes | Contact")
    end
  end

  describe "GET 'imprint'" do
    it "should be successful" do
      get 'imprint'
      response.should be_success
    end
    it "should have the right title" do
      visit imprint_path
      page.should have_selector("title", :content => "Recipes | Imprint")
    end
  end

end
