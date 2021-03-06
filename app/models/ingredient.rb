class Ingredient < ActiveRecord::Base
  belongs_to :recipe, :dependent => :destroy
  belongs_to :unit
  belongs_to :food

  validates_presence_of :unit_id
  validates_presence_of :food_id
  validates_presence_of :amount


  def food_name
    food.name if food
  end
  def unit_name
    unit.name if unit
  end
  def food_name=(name)
      self.food = Food.find_or_create_by_name(name) unless name.blank?
  end
  def unit_name=(name)
      self.unit = Unit.find_or_create_by_name(name) unless name.blank?
  end
  def element_name
    food.element.name if food && food.element
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

