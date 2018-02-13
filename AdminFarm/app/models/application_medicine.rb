class ApplicationMedicine < ApplicationRecord
  
  belongs_to :animal
  belongs_to :medicine
  
  validates :animal_id, :medicine_id, :date_medicine, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascDateMedicine,->{order(:date_medicine => "ASC")}
  scope :descDateMedicine,->{order(:date_medicine => "DESC")}
end
