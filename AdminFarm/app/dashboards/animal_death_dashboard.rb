require "administrate/base_dashboard"

class AnimalDeathDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal: Field::BelongsTo,
    death_type: Field::BelongsTo,
    destiny: Field::BelongsTo,
    id: Field::Number,
    date_death: Field::DateTime,
    observation: Field::String,
    final_weigh: Field::String.with_options(searchable: false),
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
    :death_type,
    :destiny,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal,
    :death_type,
    :destiny,
    :id,
    :date_death,
    :observation,
    :final_weigh,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :animal,
    :death_type,
    :destiny,
    :date_death,
    :observation,
    :final_weigh,
  ].freeze

  # Overwrite this method to customize how animal deaths are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(animal_death)
     "#{animal_death.animal.number_earring}"
  end
end
