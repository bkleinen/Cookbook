class Ingredient < ActiveRecord::Base
  belongs_to :instruction
  has_one :unit
  has_one :food
end
