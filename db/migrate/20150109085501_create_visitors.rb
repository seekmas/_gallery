class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.integer :activity_id

      t.timestamps
    end
  end
end
