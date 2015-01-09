class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :subject
      t.datetime :expired_at
      t.text :content

      t.timestamps
    end
  end
end
