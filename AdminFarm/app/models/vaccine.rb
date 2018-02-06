class Vaccine < ApplicationRecord
  
  has_many :vaccinations
  
  belongs_to :animal_category
  
  validates :animal_category, :name,presence: true

end
