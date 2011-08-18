# == Schema Information
#
# Table name: instructions
#
#  id            :integer         primary key
#  step          :integer
#  description   :text
#  recipe_id     :integer
#  ingredient_id :integer
#  created_at    :timestamp
#  updated_at    :timestamp
#
# step:integer, description:text, recipe_id:integer, ingredient_id :integer
class Instruction < ActiveRecord::Base
    belongs_to :recipe , :dependent => :destroy
    has_one :ingredient
end

