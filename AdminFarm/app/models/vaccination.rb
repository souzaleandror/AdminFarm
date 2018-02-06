class Vaccination < ApplicationRecord
  belongs_to :animal
  belongs_to :vaccine
  
  #validates animal vaccine date_vaccine observation, presence: true
end
