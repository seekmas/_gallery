class AddVisitorToResult < ActiveRecord::Migration
  def change
      add_column :results, :visitor_id, :integer
  end
end
