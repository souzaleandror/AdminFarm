class Farm < ApplicationRecord
  has_many :farm_lots, dependent: :restrict_with_exception
  has_many :animals, dependent: :restrict_with_exception
  
  #validates :name, :address hectare_quantity description, :obsolete, presence: true
  validates :name, :address, :hectare_quantity, presence: true
  validates :name, uniqueness: true
  
  # default_scope { order('nome ASC') }
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).order(:name)}
end
