# == Schema Information
#
# Table name: foods
#
#  id         :integer         not null, primary key
#  name_en    :string(255)
#  name_de    :string(255)
#  element_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Food < ActiveRecord::Base
  has_many :ingredients
  belongs_to :element

end
