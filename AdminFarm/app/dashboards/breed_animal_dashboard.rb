require "administrate/base_dashboard"

class BreedAnimalDashboard < Administrate::BaseDashboard
  COLLECTION_FILTERS = {
    obs: ->(resources) { resources.where(obsolete: true) },
    nobs: ->(resources) { resources.where(obsolete: false) }
  }.freeze
  
  FILTER_NAMES = {
    'nobs:' => 'no_obsolete',
    'obs:' => 'obsolete',
    #'' => 'No filter',
  }.freeze
  
  SHOW_ACTIONS = {
    'animal' => { 'link' => 'animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 1, 'name_button' => 'animal', 'model' => 'animal', 'parameter_name' => 'breed_animal_id'}
  }.freeze
  
  INDEX_ACTIONS = {
   'animal' => { 'link' => 'animal', 'name_button' => 'New Animal', 'model' => 'animal'}
  }.freeze
  
  INDEX_ACTIONS_LINEA = {
    'animal' => { 'link' => 'animals', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 5, 'model' => 'animal', 'parameter_name' => 'breed_animal_id'}
  }.freeze
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal_category: Field::BelongsTo.with_options(scope: :obs),
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
    :animal_category,
    :name,
    :description,
    :obsolete,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal_category,
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
    :animal_category,
    :name,
    :description,
    :obsolete,
  ].freeze

  # Overwrite this method to customize how breed animals are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(breed_animal)
     "#{breed_animal.name}"
  end
end
