class Product < ApplicationRecord
  # has_many :product_suppliers, foreign_key: :supplier_id, dependent: :destroy
  has_many :product_suppliers
  has_many :users, through: :product_suppliers
end
