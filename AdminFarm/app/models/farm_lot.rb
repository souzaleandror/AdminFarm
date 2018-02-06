class FarmLot < ApplicationRecord
  belongs_to :farm
  
  #validates :farm_id :name, :description, :obsolete, presence: true
  validates :farm_id, :name, presence: true
  
  #default_scope { order('nome ASC') }
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).order(:name)}
end
