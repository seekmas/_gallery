class CreateAnonymous < ActiveRecord::Migration
  def change
    create_table :anonymous do |t|
      t.string :email

      t.timestamps
    end
  end
end
