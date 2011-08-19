# == Schema Information
#
# Table name: recipes
#
#  id          :integer         primary key
#  name        :string(255)
#  description :text
#  serves      :integer
#  created_at  :timestamp
#  updated_at  :timestamp
#

class Recipe < ActiveRecord::Base
  has_many :instructions
  has_many :ingredients , :through => :instructions

  validates :name, :length => { :maximum => 140}
  validates_presence_of :serves

end
