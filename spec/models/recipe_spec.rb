require 'spec_helper'

describe Recipe do
  describe "#serves" do
    recipe = Recipe.new
    recipe.serves
  end
end

# == Schema Information
#
# Table name: recipes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  serves      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

