# == Schema Information
#
# Table name: instructions
#
#  id            :integer         primary key
#  step          :integer
#  description   :text
#  recipe_id     :integer
#  ingredient_id :integer
#  created_at    :timestamp
#  updated_at    :timestamp
#

require 'spec_helper'

describe Instruction do
  # pending "add some examples to (or delete) #{__FILE__}"
end
