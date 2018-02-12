class AnimalState < ApplicationRecord
  
  has_many :animals, dependent: :restrict_with_exception
  has_many :weighings, dependent: :restrict_with_exception
  
  belongs_to :animal_category
  belongs_to :gender
  
  #validates animal_state animal_category gender :name, :min:decimal max:decimal description, :obsolete, presence: true
  validates :animal_category, :gender, :name, :weigh_min, :weigh_max, presence: true

  #default_scope { order('name ASC') }
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  scope :set_gender,->(arg1){where("gender_id = ?",arg1) }
  scope :obsAscNome,->{where(:obsolete => false).order(:name)}
end
