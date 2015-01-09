class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :subject
      t.text :content
      t.string :photo
      t.integer :activity_id

      t.timestamps
    end
  end
end
