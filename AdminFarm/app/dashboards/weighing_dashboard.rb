require "administrate/base_dashboard"

class WeighingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal: Field::BelongsTo,
    animal_stage: Field::BelongsTo,
    animal_state: Field::BelongsTo,
    id: Field::Number,
    weigh_date: Field::DateTime,
    weight: Field::String.with_options(searchable: false),
    gain_weight: Field::String.with_options(searchable: false),
    pregnant: Field::Boolean,
    sick: Field::Boolean,
    description: Field::String,
    observation: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :animal,
    :animal_stage,
    :animal_state,
    :weight,
    :weigh_date,
    :gain_weight,
    :pregnant,
    :sick,
    
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal,
    :animal_stage,
    :animal_state,
    :id,
    :weigh_date,
    :weight,
    :gain_weight,
    :pregnant,
    :sick,
    :description,
    :observation,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :animal,
    :animal_stage,
    :animal_state,
    :weigh_date,
    :weight,
    :gain_weight,
    :pregnant,
    :sick,
    :description,
    :observation,
  ].freeze

  # Overwrite this method to customize how weighings are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(weighing)
     "#{weighing.animal.number_earring}"
  end
end
