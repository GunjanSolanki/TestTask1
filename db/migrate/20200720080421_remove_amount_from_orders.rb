class RemoveAmountFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :amount, :decimal
  end
end
