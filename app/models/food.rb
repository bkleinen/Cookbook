class Food < ActiveRecord::Base
  has_many :ingredients
  belongs_to :element
end
