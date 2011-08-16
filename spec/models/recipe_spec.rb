# == Schema Information
#
# Table name: recipes
#
#  id          :integer         primary key
#  name        :string(255)
#  description :text
#  serves      :integer
#  created_at  :timestamp
#  updated_at  :timestamp
#

require 'spec_helper'

describe Recipe do
  describe "#serves" do
    recipe = Recipe.new
    recipe.serves
  end
end
