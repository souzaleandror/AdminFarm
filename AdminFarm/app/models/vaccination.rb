class Vaccination < ApplicationRecord
  belongs_to :animal
  belongs_to :vaccine
  
  validates :animal_id, :vaccine_id, :date_vaccine, presence: true
  
end
