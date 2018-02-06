require "administrate/base_dashboard"

class AnimalCategoryDashboard < Administrate::BaseDashboard
  COLLECTION_FILTERS = {
     obs: ->(resources) { resources.where(obsolete: true) },
     nobs: ->(resources) { resources.where(obsolete: false) }
   }.freeze
   
  FILTER_NAMES = {
    'nobs:' => 'no_obsolete',
    'obs:' => 'obsolete',
  }.freeze
  
  SHOW_ACTIONS = {
    'animal' => { 'link' => 'animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'Animal', 'model' => 'animal', 'parameter_name' => 'animal_category_id'},
    'vaccine' => { 'link' => 'vaccines', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'Vaccine', 'model' => 'vaccine', 'parameter_name' => 'animal_category_id'},
    'medicine' => { 'link' => 'medicines', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'Medicine', 'model' => 'medicine', 'parameter_name' => 'animal_category_id'},
    'breed_animal' => { 'link' => 'breed_animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'breed animal', 'model' => 'breed animal', 'parameter_name' => 'animal_category_id'},
    'animal_stage' => { 'link' => 'animal_stages', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'Animal Stage', 'model' => 'animal stage', 'parameter_name' => 'animal_category_id'},
    'animal_state' => { 'link' => 'animal_states', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 0, 'name_button' => 'Animal State', 'model' => 'animal state', 'parameter_name' => 'animal_category_id'},
  }.freeze
  
  INDEX_ACTIONS = {
   'vaccine' => { 'link' => 'vaccine', 'name_button' => 'New Vaccine', 'model' => 'vaccine'},
   'medicine' => { 'link' => 'medicine', 'name_button' => 'New Medicine', 'model' => 'medicine'},
   'breed_animal' => { 'link' => 'breed_animal', 'name_button' => 'New Breed Animal', 'model' => 'breed animal'},
   'animal_stage' => { 'link' => 'animal_stage', 'name_button' => 'New Animal Stage', 'model' => 'animal stage'},
   'animal_state' => { 'link' => 'animal_state', 'name_button' => 'New Animal State', 'model' => 'animal state'},
  }.freeze
  
  INDEX_ACTIONS_LINEA = {
    'animal' => { 'link' => 'animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 3, 'model' => 'animal', 'parameter_name' => 'animal_category_id'}
  }.freeze
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    description: Field::String,
    obsolete: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :description,
    :obsolete,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :description,
    :obsolete,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :description,
    :obsolete,
  ].freeze

  # Overwrite this method to customize how animal categories are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(animal_category)
     "#{animal_category.name}"
  end
end
