class AddUseridToLists < ActiveRecord::Migration
  def change
    add_column :lists, :user_id, :integer
  end
end
