class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :key_name
      t.string :value_name
      t.integer :activity_id

      t.timestamps
    end
  end
end
