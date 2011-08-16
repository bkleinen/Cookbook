# == Schema Information
#
# Table name: elements
#
#  id         :integer         primary key
#  name       :string(255)
#  created_at :timestamp
#  updated_at :timestamp
#

class Element < ActiveRecord::Base
  has_many :foods
end
