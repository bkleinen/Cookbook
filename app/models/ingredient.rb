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
#

class Ingredient < ActiveRecord::Base
  belongs_to :instruction, :dependent => :destroy
  belongs_to :unit
  belongs_to :food


  def food_name
    food.name if food
  end
  def food_name=(name)
      self.food = Food.find_or_create_by_name(name) unless name.blank?
  end
end

