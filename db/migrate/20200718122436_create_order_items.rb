class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'

    create_table :order_items, id: :uuid do |t|
      t.references :order, type: :uuid, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
