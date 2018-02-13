class BreedAnimal < ApplicationRecord
  belongs_to :animal_category
  
  #validates animal_category :name, :description, :obsolete, presence: true
  validates :animal_category_id, :name, presence: true
    
  #default_scope { order('name ASC') }
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).order(:name)}
end
