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

# == Schema Information
#
# Table name: ingredients
#
#  id         :integer         not null, primary key
#  amount     :decimal(, )
#  unit_id    :integer
#  food_id    :integer
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#  step       :integer
#  recipe_id  :integer
#

