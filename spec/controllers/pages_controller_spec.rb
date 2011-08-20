require 'spec_helper'

describe PagesController do
  render_views
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should set variables" do
      get 'contact'
      assigns(:title).should eq("Recipes | Contact")
    end
  end
  describe "pages/contact.html.haml" do
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
    it "should set variables" do
      get 'imprint'
      assigns(:title).should eq("Recipes | Imprint")
    end
  end


end
