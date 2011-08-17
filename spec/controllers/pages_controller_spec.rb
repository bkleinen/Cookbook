require 'spec_helper'

describe PagesController do

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'imprint'" do
    it "should be successful" do
      get 'imprint'
      response.should be_success
    end
  end

end
