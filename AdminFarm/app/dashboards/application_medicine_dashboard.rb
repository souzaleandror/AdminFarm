require "administrate/base_dashboard"

class ApplicationMedicineDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal: Field::BelongsTo,
    medicine: Field::BelongsTo,
    id: Field::Number,
    date_medicine: Field::DateTime,
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
    :medicine,
    :date_medicine,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal,
    :medicine,
    :id,
    :date_medicine,
    :observation,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :animal,
    :medicine,
    :date_medicine,
    :observation,
  ].freeze

  # Overwrite this method to customize how application medicines are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(application_medicine)
     "##{application_medicine.animal.number_earring}"
  end
end
