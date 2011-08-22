class RemoveNameDeFromFoods < ActiveRecord::Migration
  def self.up
    remove_column :foods, :name_de
    rename_column :foods, :name_en, :name
  end

  def self.down
    add_column :foods, :name_de, :string
    rename_column :foods, :name, :name_en
  end
end
