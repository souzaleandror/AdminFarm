class Weighing < ApplicationRecord
  belongs_to :animal
  belongs_to :animal_stage
  belongs_to :animal_state
  
  #validates animal animal_stage weigh_date weight gain_weight animal_state pregnant sick description, :observation, presence: true
  validates :animal, :animal_stage, :animal_state, :weigh_date, :weight, :gain_weight, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascWeighDate,->{order(:weigh_date => "ASC")}
  scope :descWeighDate,->{order(:weigh_date => "DESC")}
  
end
