require "administrate/base_dashboard"

class FarmDashboard < Administrate::BaseDashboard
    COLLECTION_FILTERS = {
     obs: ->(resources) { resources.where(obsolete: true) },
     nobs: ->(resources) { resources.where(obsolete: false) }
   }.freeze
   
  FILTER_NAMES = {
    'nobs:' => 'no_obsolete',
    'obs:' => 'obsolete',
  }.freeze
  
  SHOW_ACTIONS = {
    'farm_lot' => { 'link' => 'farm_lots', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 5, 'name_button' => 'Farm Lot', 'model' => 'farm lot', 'parameter_name' => 'farm_id'}
  }.freeze
  
  INDEX_ACTIONS = {
   'farm_lot' => { 'link' => 'farm_lot', 'name_button' => 'New Farm Lot', 'model' => 'farm lot'}
  }.freeze
  
  INDEX_ACTIONS_LINEA = {
    'farm_lot' => { 'link' => 'farm_lots', 'name_field' => 'obsolete', 'value_field' => 'true', 'position_field' => 1, 'model' => 'farm lot', 'parameter_name' => 'farm_id'}
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
    address: Field::String,
    hectare_quantity: Field::Number,
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
    :address,
    :hectare_quantity,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :address,
    :hectare_quantity,
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
    :address,
    :hectare_quantity,
    :description,
    :obsolete,
  ].freeze

  # Overwrite this method to customize how farms are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(farm)
     "#{farm.name}"
  end
end
