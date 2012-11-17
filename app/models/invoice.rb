class Invoice < ActiveRecord::Base
  belongs_to :customer
  belongs_to :location
  has_many :invoice_items
end
