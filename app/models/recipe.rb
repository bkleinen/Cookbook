class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :foods, :through => :ingredients
  belongs_to :user
  validates :name, :length => { :maximum => 140}
  validates_presence_of :serves

end

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
#  user_id     :integer
#

