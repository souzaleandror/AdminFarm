class Gender < ApplicationRecord
  has_many :animal_stages
  has_many :animal_states
  has_many :animals 
  
  validates :name, presence: true
  validates :name, uniqueness: true
  #validates :name, :description, :obsolete, presence: true
    
  # default_scope { order('name ASC') }
  # default_scope { where(:obsoleto => false)}
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascName,->{order(:name => "ASC")}
  scope :descName,->{order(:name => "DESC")}
  scope :obs,->{where(:obsolete => false)}
  #scope :obs,->{where(:obsoleto => false) && Sexo.ascNome }
  #scope :ob,->{ (Sexo.obs && Sexo.ascNome)}
  #scope :obs,->{where(:obsoleto => false).includes(Sexo.ascNome)}
  #scope :ob,->{ joins(Sexo.obs).joins(Sexo.ascNome)}
  scope :obsAscName,->{where(:obsolete => false).order(:nome)}
  
end
