class CreateProductSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :product_suppliers do |t|
      t.integer :product_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
