class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :name_en
      t.string :name_de
      t.integer :element_id

      t.timestamps
    end
  end

  def self.down
    drop_table :foods
  end
end
