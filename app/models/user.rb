class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  ROLES = %i[admin supplier buyer banned]

  has_many :product_suppliers, foreign_key: :supplier_id, dependent: :destroy
  has_many :products, through: :product_suppliers
end
