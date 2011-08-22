require "spec_helper"
describe "UserSession" do
  describe "/GET new" do
    it "login page should have the right title" do
      visit login_path
      page.should have_selector("title", :content => "Recipes | Login")
    end
  end

end
