# == Schema Information
#
# Table name: foods
#
#  id         :integer         primary key
#  name_en    :string(255)
#  name_de    :string(255)
#  element_id :integer
#  created_at :timestamp
#  updated_at :timestamp
#

class Food < ActiveRecord::Base
  has_many :ingredients
  belongs_to :element
end
