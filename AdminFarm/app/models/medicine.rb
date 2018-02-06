class Medicine < ApplicationRecord
  
  has_many :application_medicines
  
  belongs_to :animal_category
  
  validates :animal_category, :name,presence: true
end
