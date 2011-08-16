class Recipe < ActiveRecord::Base
  has_many :instructions
  has_many :ingredients , :through => :instructions
end
