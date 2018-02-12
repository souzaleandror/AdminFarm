class Vaccine < ApplicationRecord
  
  has_many :vaccinations, dependent: :restrict_with_exception
  
  belongs_to :animal_category
  
  validates :animal_category, :name,presence: true

end
