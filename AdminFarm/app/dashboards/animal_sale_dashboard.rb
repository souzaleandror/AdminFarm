require "administrate/base_dashboard"

class AnimalSaleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    animal: Field::BelongsTo,
    sale_type: Field::BelongsTo,
    destiny: Field::BelongsTo,
    id: Field::Number,
    date_sale: Field::DateTime,
    observation: Field::String,
    purchase_value: Field::String.with_options(searchable: false),
    sales_value: Field::String.with_options(searchable: false),
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
    :sale_type,
    :destiny,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :animal,
    :sale_type,
    :destiny,
    :id,
    :date_sale,
    :observation,
    :purchase_value,
    :sales_value,
    :final_weigh,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :animal,
    :sale_type,
    :destiny,
    :date_sale,
    :observation,
    :purchase_value,
    :sales_value,
    :final_weigh,
  ].freeze

  # Overwrite this method to customize how animal sales are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(animal_sale)
     "#{animal_sale.animal.number_earring}"
  end
end
