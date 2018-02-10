class Company < ApplicationRecord
  
  validates :name, :slogan, presence: true
  
end
