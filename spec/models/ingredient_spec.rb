require 'spec_helper'

describe Ingredient do
  before(:each) do
    @attr = {
        :amount => 100,
        :unit_id => 1,
        :food_id => 1,
        :comment => "my comment"
    }
  end
  it "should create a new instance given valid attributes" do
     ingredient = Ingredient.create!(@attr)
   end

  it "should require a unit" do
    Ingredient.new(@attr.merge(:unit_id => nil)).
    should_not be_valid
  end
  it "should require a food" do
    Ingredient.new(@attr.merge(:food_id => nil)).
    should_not be_valid
  end

end
