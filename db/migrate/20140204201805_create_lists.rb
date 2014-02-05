class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :name
      t.integer :parent_id
      t.integer :rgt
      t.integer :lft
      t.integer :depth
    end
  end
    
  def self.down
    drop_table :lists
  end
end
