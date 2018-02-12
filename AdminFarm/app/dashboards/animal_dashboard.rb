require "administrate/base_dashboard"

class AnimalDashboard < Administrate::BaseDashboard
  COLLECTION_FILTERS = {
     an_no: ->(resources) { resources.where.not(id: AnimalDeath.select(:animal_id)).where.not(id: AnimalSale.select(:animal_id))},
     an_de: ->(resources) { resources.where(id: AnimalDeath.select(:animal_id))},
     an_sa: ->(resources) { resources.where(id: AnimalSale.select(:animal_id))},
     #an_de_sa: ->(resources) { resources.where(id: AnimalDeath.select(:animal_id)).where(id: AnimalSale.select(:animal_id))}
     an_de_sa: ->(resources) { resources.where(id: AnimalDeath.select(:animal_id)).or(resources.where(id: AnimalSale.select(:animal_id)))}
   }.freeze
   
  FILTER_NAMES = {
    'an_no:' => 'animals_normal',
    'an_de:' => 'animals_deaths',
    'an_sa:' => 'animals_sales',
    'an_de_sa:' => 'animals_deaths_sales',
  }.freeze
  
  SHOW_ACTIONS = {
    'weighing' => { 'link' => 'weighings', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 7, 'name_button' => 'Weighing', 'model' => 'weighing', 'parameter_name' => 'animal_id'},
    'vaccination' => { 'link' => 'vaccinations', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 7, 'name_button' => 'Vaccination', 'model' => 'vaccination', 'parameter_name' => 'animal_id'},
    'application_medicine' => { 'link' => 'medicines', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 7, 'name_button' => 'Medicine', 'model' => 'medicine', 'parameter_name' => 'animal_id'},
    'animal_death' => { 'link' => 'breed_animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 7, 'name_button' => 'breed animal', 'model' => 'breed animal', 'parameter_name' => 'animal_id'},
    'animal_sale' => { 'link' => 'animal_stages', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 7, 'name_button' => 'Animal Stage', 'model' => 'animal stage', 'parameter_name' => 'animal_category_id'},
  }.freeze
  
  INDEX_ACTIONS = {
   'weighing' => { 'link' => 'weighing', 'name_button' => 'New Weighing', 'model' => 'weighing'},
   'vaccination' => { 'link' => 'vaccination', 'name_button' => 'New Vaccination', 'model' => 'vaccination'},
   'application_medicine' => { 'link' => 'application_medicine', 'name_button' => 'New Application Medicine', 'model' => 'application medicine'},
   'animal_death' => { 'link' => 'animal_death', 'name_button' => 'New Animal Death', 'model' => 'animal death'},
   'animal_sale' => { 'link' => 'animal_sale', 'name_button' => 'New Animal Sale', 'model' => 'animal sale'},
  }.freeze
  
  #INDEX_ACTIONS_LINEA = {
    #'animal' => { 'link' => 'animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 3, 'model' => 'animal', 'parameter_name' => 'animal_category_id'}
  #}.freeze
  
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal_category: Field::BelongsTo.with_options(scope: :obs),
    breed_animal: Field::BelongsTo.with_options(scope: :obs),
    gender: Field::BelongsTo.with_options(scope: :obs),
    animal_stage: Field::BelongsTo.with_options(scope: :obs),
    animal_state: Field::BelongsTo.with_options(scope: :obs),
    origin: Field::BelongsTo.with_options(scope: :obs),
    farm: Field::BelongsTo.with_options(scope: :obs),
    id: Field::Number,
    number_earring: Field::String,
    date_register: Field::DateTime,
    birth_date: Field::DateTime,
    earring_mother_number: Field::String,
    initial_weigh: Field::String.with_options(searchable: false),
    description: Field::String,
    obsolete: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :number_earring,
    :animal_category,
    :breed_animal,
    :gender,
    :animal_stage,
    :obsolete,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal_category,
    :breed_animal,
    :gender,
    :animal_stage,
    :animal_state,
    :origin,
    :farm,
    :id,
    :number_earring,
    :date_register,
    :birth_date,
    :earring_mother_number,
    :initial_weigh,
    :description,
    :obsolete,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :animal_category,
    :breed_animal,
    :gender,
    :animal_stage,
    :animal_state,
    :origin,
    :farm,
    :number_earring,
    :date_register,
    :birth_date,
    :earring_mother_number,
    :initial_weigh,
    :description,
    :obsolete,
  ].freeze

  # Overwrite this method to customize how animals are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(animal)
     "#{animal.number_earring}"
  end
end
