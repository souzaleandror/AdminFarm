class Origin < ApplicationRecord
  has_many :animals, dependent: :restrict_with_exception
  
  validates :name, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :obsAscName,->{where(:obsolete => false).orde´r(:name)}
end
