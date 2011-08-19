# == Schema Information
#
# Table name: instructions
#
#  id            :integer         not null, primary key
#  step          :integer
#  description   :text
#  recipe_id     :integer
#  ingredient_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#


class Instruction < ActiveRecord::Base
    belongs_to :recipe , :dependent => :destroy
    has_one :ingredient
end

