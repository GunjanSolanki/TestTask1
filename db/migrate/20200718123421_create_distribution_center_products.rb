class CreateDistributionCenterProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :distribution_center_products do |t|
      t.references :distribution_center, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps

      # adds unique indexing to product and distribution_center fields
      # t.index([:product_id, :distribution_center_id], unique: true)
    end
    # add_index :distribution_center_products, [:product_id, :distribution_center_id], unique: true
  end
end
