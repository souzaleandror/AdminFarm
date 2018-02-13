class AnimalDeath < ApplicationRecord
  belongs_to :animal
  belongs_to :death_type
  belongs_to :destiny
  
  validates :animal_id, :death_type_id, :destiny_id, :date_death, presence: true
  validates :animal_id, uniqueness: true
  #validates animal death_type destiny date_death observation final_weigh, presence: true
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascDateDeath,->{order(:date_death => "ASC")}
  scope :descDateDeath,->{order(:date_death => "DESC")}
  
end