class Animal < ApplicationRecord
  
  has_many :weighings
  has_many :vaccinations
  has_many :application_medicines
  has_many :animal_deaths
  has_many :animal_sales
  
  belongs_to :animal_category
  belongs_to :breed_animal
  belongs_to :gender
  belongs_to :animal_stage
  belongs_to :animal_state
  belongs_to :origin
  belongs_to :farm
  
  #validates animal_category breed_animal gender animal_stage animal_state origin farm number_earring date_register birth_date earring_mother_number initial_weigh description, :obsolete, presence: true
  validates :animal_category, :breed_animal, :gender, :animal_stage, :animal_state, :origin, :farm, presence: true
  validates :number_earring, :date_register, :birth_date, :earring_mother_number, :initial_weigh, presence: true
  
  # default_scope { order(:numeroBrinco => "ASC")}

  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :ascNumberEarring,->{order(:number_earring => "ASC")}
  scope :descNumberEarring,->{order(:number_earring => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  #scope :obsAscName,->{where(:obsolete => false).order(:number_earring)}

end
