# == Schema Information
#
# Table name: ingredients
#
#  id         :integer         primary key
#  amount     :decimal(, )
#  unit_id    :integer
#  food_id    :integer
#  comment    :text
#  created_at :timestamp
#  updated_at :timestamp
#

class Ingredient < ActiveRecord::Base
  belongs_to :instruction, :dependent => :destroy
  belongs_to :unit
  belongs_to :food
end
