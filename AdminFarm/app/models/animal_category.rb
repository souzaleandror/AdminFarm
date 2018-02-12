class AnimalCategory < ApplicationRecord
  has_many :vaccines, dependent: :restrict_with_exception
  has_many :medicines, dependent: :restrict_with_exception
  has_many :breed_animals, dependent: :restrict_with_exception
  has_many :animal_stages, dependent: :restrict_with_exception
  has_many :animal_states, dependent: :restrict_with_exception
  has_many :animals, dependent: :restrict_with_exception
  
  #default_scope { order('nome ASC') }
  
  validates :name, presence: true
  #validates :name, :description, :obsolete, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).order(:name)}
end
