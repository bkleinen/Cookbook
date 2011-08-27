class RemoveInstructions < ActiveRecord::Migration
  def self.up
    drop_table :instructions
  end

  def self.down
    create_table :instructions do |t|
      t.integer :step
      t.text :description
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
