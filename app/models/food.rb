class Food < ActiveRecord::Base
  has_many :ingredients
  has_many :instructions, :through => :ingredients
  has_many :recipes, :through => :instructions
  belongs_to :element

end

# == Schema Information
#
# Table name: foods
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  element_id :integer
#  created_at :datetime
#  updated_at :datetime
#

