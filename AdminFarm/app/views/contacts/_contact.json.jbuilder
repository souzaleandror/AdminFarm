json.extract! contact, :id, :name, :email, :phone, :message, :accept, :newsletter, :info, :obs, :answered, :created_at, :updated_at
json.url contact_url(contact, format: :json)
