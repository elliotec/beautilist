class ChangeCompleteDefault < ActiveRecord::Migration
  def change
    change_column :lists, :complete, :boolean, default: false
  end
end
