class AddOrderIdToFields < ActiveRecord::Migration
  def change
      add_column :fields , :order_id , :integer
  end
end
