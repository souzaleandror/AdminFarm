class Medicine < ApplicationRecord
  
  has_many :application_medicines, dependent: :restrict_with_exception
  
  belongs_to :animal_category
  
  validates :animal_category_id, :name,presence: true
end
