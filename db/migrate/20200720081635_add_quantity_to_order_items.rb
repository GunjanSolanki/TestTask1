class AddQuantityToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :quantity, :integer, null: false
  end
end
