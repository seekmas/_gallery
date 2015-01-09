class AddActivityIdToAnonymous < ActiveRecord::Migration
  def change
      add_column :anonymous , :activity_id , :integer
  end
end
