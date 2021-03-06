class Contact < ApplicationRecord
  
  validates :name, :email, :message, presence: true
  validates :name, :email, :message, length: { minimum: 2 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :accept, :acceptance => true
  
 #:name, :email, :phone, :message, :accept, :newsletter, :info, :obs, :answered
    
end
