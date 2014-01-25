class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :text
      t.timestamps
    end
  end
end
