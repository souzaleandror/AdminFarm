class SaleType < ApplicationRecord
  has_many :animal_sales
  
  validates :name, presence: true
end
