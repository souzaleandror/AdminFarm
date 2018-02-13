class Company < ApplicationRecord
  
  validates :name, :slogan, presence: true
    validates :name, uniqueness: true
  
end
