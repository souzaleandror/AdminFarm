class SaleType < ApplicationRecord
  has_many :animal_sales, dependent: :restrict_with_exception
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
