require 'spec_helper'

describe PagesController do
  render_views

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
  describe "pages/imprint.html.haml" do
    it "should have the right title" do
      visit imprint_path
      page.should have_selector("title", :content => "Recipes | Imprint")
    end
  end

end
