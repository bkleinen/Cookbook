require 'spec_helper'

describe "Instructions" do
  describe "GET /instructions" do
    it "works! (now write some real specs)" do
      get instructions_path
      response.status.should be(200)
    end
  end
end
