class AddIndexToLists < ActiveRecord::Migration
  def change
    add_index :lists, [:rgt, :lft, :depth, :parent_id]
  end
end
