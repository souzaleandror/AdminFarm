class AnimalSale < ApplicationRecord
  belongs_to :animal
  belongs_to :sale_type
  belongs_to :destiny
  
  validates :animal, :sale_type, :destiny, :date_sale, :purchase_value, :sales_value, :final_weigh, presence: true
  #validates animal sale_type destiny date_sale observation purchase_value sales_value final_weigh, presence: true
  
  scope :ascCreated_at,->{order(:created_at => "ASC")}
  scope :descCreated_at,->{order(:created_at => "DESC")}
  scope :ascDateSale,->{order(:date_sale => "ASC")}
  scope :descDateSale,->{order(:date_sale => "DESC")}
end
