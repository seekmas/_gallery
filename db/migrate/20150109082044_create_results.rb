class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :field_id
      t.string :field_value
      t.integer :anonymous_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
