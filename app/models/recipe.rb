# == Schema Information
#
# Table name: recipes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  serves      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :foods, :through => :ingredients

  validates :name, :length => { :maximum => 140}
  validates_presence_of :serves

end
