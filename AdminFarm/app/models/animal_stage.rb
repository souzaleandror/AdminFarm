class AnimalStage < ApplicationRecord
  
  has_many :animals
  has_many :weighings
  
  belongs_to :animal_category
  belongs_to :gender
  
  #validates animal_category gender :name, :min_month max_month description, :obsolete, presence: true  
  validates :animal_category, :gender, :name, :min_month, :max_month, presence: true

  #default_scope { order('nome ASC') }
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :set_gender,->(arg1){where("gender_id = ?",arg1) }
  scope :obsAscName,->{where(:obsolete => false).order(:name)}
end
