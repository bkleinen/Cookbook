class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.decimal :amount
      t.integer :unit_id
      t.integer :food_id
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end
